import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:video_player/view/login_or_signup/login_or_signup.dart';
import 'package:video_player/view/otp_screen/otp.dart';
import 'package:video_player/view/utils/constants/constants.dart';

class AuthRepositary {
  final auth = FirebaseAuth.instance;
  var verificationId = '';

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

  Future<bool> verifyOtp(String otp, String verificationid) async {
    var credentials = await auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationid, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  void logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginOrSignUpPage()),
          (route) => false);
    });
  }
}
