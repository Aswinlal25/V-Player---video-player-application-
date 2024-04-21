// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';

import 'package:video_player/view/login_sreen/widgets/privacy_policy_text.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/view/utils/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  final Color primary;
  final Color background;
  final Function()? onTap;
  const LoginScreen(
      {super.key,
      required this.onTap,
      required this.primary,
      required this.background});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController phoneNoController = TextEditingController();
TextEditingController countryCodeController = TextEditingController();
String completePhoneNumber = '';

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: widget.background,
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
                'WELCOME\nBACK',
                style: TextStyle(
                    color: widget.primary,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 4,
                    wordSpacing: 1),
              ),
              Text(
                'Login to continue',
                style: TextStyle(
                    color: widget.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 4,
                    wordSpacing: 1),
              ),
              SizedBox(
                height: 40,
              ),
              Form(
                //  key: formKey,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: screenSize.height * 0.066,
                      width: screenSize.width * 0.84,
                      child: InternationalPhoneNumberInput(
                        onInputChanged: (PhoneNumber number) {
                          setState(() {
                            completePhoneNumber = number.phoneNumber.toString();
                          });
                        },
                        onInputValidated: (bool value) {
                          print(value);
                        },
                        selectorConfig: SelectorConfig(
                          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          useBottomSheetSafeArea: true,
                        ),
                        ignoreBlank: false,
                        autoValidateMode: AutovalidateMode.disabled,
                        selectorTextStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        // initialValue: "number",
                        textFieldController: phoneNoController,
                        formatInput: true,
                        keyboardType: TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: OutlineInputBorder(),
                        onSaved: (PhoneNumber number) {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthEvent.signWithPhoneNumber(
                      context: context, number: completePhoneNumber));
                  print("----------$completePhoneNumber");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.primary,
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
                            color: widget.background,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ),
              kheight15,
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: widget.onTap,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "Don't have an Account\t",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                          ),
                        ),
                        TextSpan(
                          text: 'Sign up',
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
                height: 120,
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
