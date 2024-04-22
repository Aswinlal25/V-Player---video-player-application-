import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/controller/functions/auth.dart';
import 'package:video_player/view/home_screen/home.dart';
import 'package:video_player/view/login_or_signup/login_or_signup.dart';
import 'package:video_player/view/otp_screen/otp.dart';
import 'package:video_player/view/profile_create_screen/profile_create.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepositary authRepositary = AuthRepositary();
  final auth = FirebaseAuth.instance;
  final dataServer = FirebaseFirestore.instance;
  AuthBloc() : super(AuthState.initial()) {
    on<_CheckUserStatus>((event, emit) async {
      final authServer = FirebaseAuth.instance;
      final status = authServer.currentUser;
      if (status == null) {
        Navigator.pushAndRemoveUntil(
            event.context,
            MaterialPageRoute(
              builder: (context) => const LoginOrSignUpPage(),
            ),
            (route) => false);
      } else {
        await AuthRepositary().checkUserExist().then((value) {
          if (!value) {
            Navigator.pushAndRemoveUntil(
                event.context,
                MaterialPageRoute(
                  builder: (context) => ProfileCreateScreen(),
                ),
                (route) => false);
          } else {
            Navigator.pushAndRemoveUntil(
                event.context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
                (route) => false);
          }
        });
      }
    });
    on<_signWithPhoneNumber>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      // AuthServices().signWithPhoneNumber(event.context, event.number);
      try {
        await auth.verifyPhoneNumber(
          phoneNumber: event.number,
          verificationCompleted: (phoneAuthCredential) async {
            await auth.signInWithCredential(phoneAuthCredential);
          },
          verificationFailed: (error) {
            throw Exception(error.message);
          },
          codeSent: (verificationId, forceResendingToken) {
            Navigator.of(event.context).push(MaterialPageRoute(
                builder: (context) => OtpScreen(
                      verificationId: verificationId,
                    )));
          },
          codeAutoRetrievalTimeout: (verificationId) {},
        );
      } on FirebaseAuthException catch (e) {
        print(e.toString());
      }
      emit(state.copyWith(isLoading: false));
    });

    on<_VerifyOTP>((event, emit) async {
      authRepositary.verifyOTP(
          context: event.context,
          verificationId: event.verificationId,
          otpSent: event.otpSent);
    });

    on<_AddUserdata>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      authRepositary.addUserData(
        name: event.name,
        mobile: event.mobile,
        image: event.image,
        email: event.email,
        dateOfBirth: event.dateOfBirth,
        context: event.context,
      );
      emit(state.copyWith(isLoading: false));
    });

    // on<_SignOut>((event, emit) async {
    //   authRepositary.logout(context);
    // });
  }
}
