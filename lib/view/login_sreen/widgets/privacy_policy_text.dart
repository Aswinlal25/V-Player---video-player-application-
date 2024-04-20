import 'package:flutter/material.dart';

class PrivacyTexts extends StatelessWidget {
  const PrivacyTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: "By continuing, I agree to the ",
            style: TextStyle(
              color: primary,
              fontSize: 13,
              fontWeight: FontWeight.w300,
              letterSpacing: 0.5,
            ),
          ),
          TextSpan(
            text: 'Terms of\n         Setvice',
            style: TextStyle(
                color: primary,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.6,
                wordSpacing: 0.5),
          ),
          TextSpan(
            text: ' and ',
            style: TextStyle(
                color: primary,
                fontSize: 13,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.6,
                wordSpacing: 1),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
                color: primary,
                fontSize: 13,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.6,
                wordSpacing: 0.5),
          )
        ]),
      ),
    );
  }
}
