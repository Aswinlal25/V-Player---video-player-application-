// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:video_player/view/login_sreen/widgets/custom_button.dart';
import 'package:video_player/view/login_sreen/widgets/privacy_policy_text.dart';
import 'package:video_player/view/login_sreen/widgets/signin_text.dart';
import 'package:video_player/view/login_sreen/widgets/titile_part.dart';
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
              TitlePart(widget: widget),
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
              CustomButton(widget: widget, screenSize: screenSize),
              kheight15,
              Center(
                child: SigninPageTxt(widget: widget),
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
