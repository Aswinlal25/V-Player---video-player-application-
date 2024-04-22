import 'package:flutter/material.dart';
import 'package:video_player/view/login_sreen/login.dart';

class SigninPageTxt extends StatelessWidget {
  const SigninPageTxt({
    super.key,
    required this.widget,
  });

  final LoginScreen widget;

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
