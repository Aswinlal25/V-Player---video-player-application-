import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TitlePart extends StatelessWidget {
  const TitlePart({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
