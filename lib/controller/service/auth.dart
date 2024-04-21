import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:video_player/controller/auth/auth/auth_bloc.dart';
import 'package:video_player/model/usermodel/user.dart';
import 'package:video_player/model/videomodel/videomoel.dart';
import 'package:video_player/view/home_screen/home.dart';
import 'package:video_player/view/login_or_signup/login_or_signup.dart';
import 'package:video_player/view/otp_screen/otp.dart';
import 'package:video_player/view/utils/constants/constants.dart';

class AuthRepositary {
  final auth = FirebaseAuth.instance;
  final dataServer = FirebaseFirestore.instance;
  //ookvar verificationId = '';

  Future<void> loginwithPhoneNumber(
      String phoneNumber, BuildContext context) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber);
    String parsableNumber = number.parseNumber();

    await auth.verifyPhoneNumber(
        phoneNumber: parsableNumber,
        verificationCompleted: (credentials) async {
          await auth.signInWithCredential(credentials);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            showCustomSnackbar(
                context, 'The provided phone number is not valid');
          } else {
            showCustomSnackbar(context, 'Something went to wrong try again!');
          }
        },
        codeSent: (verificationId, resendToken) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OtpScreen(
                        verificationId: verificationId,
                      )));
        },
        codeAutoRetrievalTimeout: (verificationId) {});
  }

  void verifyOTP({
    required BuildContext context,
    required String verificationId,
    required String otpSent,
  }) async {
    try {
      PhoneAuthCredential cred = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpSent);
      await auth.signInWithCredential(cred).then((value) {
        if (value.user != null) {
          context
              .read<AuthBloc>()
              .add(AuthEvent.checkUserStatus(context: context));
        }
      });
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      // showToast(msg: e.message.toString());
    }
  }
  // Future<bool> verifyOtp(String otp, String verificationid) async {
  //   var credentials = await auth.signInWithCredential(
  //       PhoneAuthProvider.credential(
  //           verificationId: verificationid, smsCode: otp));
  //   return credentials.user != null ? true : false;
  // }

  void logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginOrSignUpPage()),
          (route) => false);
    });
  }

  Future<bool> checkUserExist() async {
    final userData = await dataServer
        .collection('UserCollection')
        .doc(auth.currentUser!.uid)
        .get();
    if (userData.exists) {
      return true;
    } else {
      return false;
    }
  }

  void addUserData(
      {required String name,
      required String mobile,
      required String image,
      required String email,
      required String dateOfBirth,
      required BuildContext context}) async {
    final userData = UserModel(
        name: name,
        mobile: mobile,
        email: email,
        dateOfBirth: dateOfBirth,
        image: image);
    try {
      await dataServer
          .collection('UserCollection')
          .doc(auth.currentUser!.uid)
          .set(userData.toMap())
          .then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
            (route) => false);
        showCustomSnackbar(context, 'User Added Successfully');
      });
    } catch (e) {}
  }

  Future<UserModel?> getUserData() async {
    try {
      final userData = await dataServer
          .collection('UserCollection')
          .doc(auth.currentUser!.uid)
          .get();

      final userModelData = UserModel.fromMap(userData.data()!);
      return userModelData;
    } catch (e) {
      return null;
    }
  }

  Future<List<Videos>> getAllvideos() async {
    List<Videos> users = [];
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection("onlineVideos").get();

      if (querySnapshot.docs.isNotEmpty) {
        users = querySnapshot.docs.map((doc) {
          return Videos.fromJson(doc.data() as Map<String, dynamic>);
        }).toList();
        // Print the fetched users
        print("Fetched users: $users");
      } else {
        print("No users found.");
      }
    } catch (error) {
      print("Error getting users: $error");
    }
    return users;
  }
}
