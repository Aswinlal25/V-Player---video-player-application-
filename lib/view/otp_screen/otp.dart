// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.verificationId});
  final String verificationId;
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpPinController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final defaultPinTheme = PinTheme(
      width: 55,
      height: 60,
      textStyle: TextStyle(
        fontSize: 22,
        color: theme.colorScheme.primary,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colorScheme.surface, width: 2.5),
      ),
    );

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_sharp)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                  width: 200,
                  child: Lottie.asset('assets/animations/YPvV9by7nz.json',
                      repeat: false)),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Verify OTP',
              style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                  wordSpacing: 1),
            ),
            Text(
              'We have send a OTP on your number \n \t\t \   \t\t\t\t\t\t\t\t\t\t+91 9207209856',
              style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                  wordSpacing: 1),
            ),
            SizedBox(
              height: 50,
            ),
            Form(
              key: formKey,
              child: Pinput(
                androidSmsAutofillMethod:
                    AndroidSmsAutofillMethod.smsRetrieverApi,
                controller: otpPinController,
                length: 6,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: theme.colorScheme.secondary),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                print(otpPinController.text.toString());
                context.read<AuthBloc>().add(AuthEvent.verifyOTP(
                    context: context,
                    verificationId: widget.verificationId,
                    otpSent: otpPinController.text.trim()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: screenSize.height * 0.040,
                  width: screenSize.width * 0.7,
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: screenSize.width * 0.04,
                          color: theme.colorScheme.background,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
