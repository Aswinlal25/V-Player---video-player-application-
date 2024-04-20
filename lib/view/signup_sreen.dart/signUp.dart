// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/view/login_sreen/widgets/privacy_policy_text.dart';
import 'package:video_player/view/otp_screen/otp.dart';

class SignUpScreen extends StatelessWidget {
  final Function()? onTap;
  const SignUpScreen({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final primary = Theme.of(context).colorScheme.primary;
    final fcolor = Theme.of(context).colorScheme.onPrimary;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
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
                'WELCOME',
                style: TextStyle(
                    color: primary,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 5,
                    wordSpacing: 1),
              ),
              Text(
                'Create Account to continue',
                style: TextStyle(
                    color: primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 5,
                    wordSpacing: 1),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                //  key: formKey,
                child: Row(
                  children: [
                    Container(
                      height: screenSize.height * 0.066,
                      width: screenSize.width * 0.17,
                      child: TextFormField(
                        //controller: _passwordController,

                        validator: (val) => val != null && val.isNotEmpty
                            ? null
                            : 'Required Field',
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.surface,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.surface,
                              width: 2.0,
                            ),
                          ),
                          hintText: '+91',
                          hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.surface,
                            letterSpacing: 2,
                            fontSize: 15,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: screenSize.height * 0.066,
                      width: screenSize.width * 0.67,
                      child: TextFormField(
                        //controller: _passwordController,
                        keyboardType: TextInputType.number,

                        validator: (val) => val != null && val.isNotEmpty
                            ? null
                            : 'Required Field',
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.surface,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.surface,
                              width: 2.0,
                            ),
                          ),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            color: fcolor,
                            letterSpacing: 2,
                            fontSize: 15,
                          ),
                        ),
                        style: TextStyle(
                            color: primary,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => OtpScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: primary,
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
                        'Request OTP',
                        style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: Theme.of(context).colorScheme.background,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: onTap,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Already have an Account\t",
                          style: TextStyle(
                            color: fcolor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              wordSpacing: 1),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.center,
                child: PrivacyTexts(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
