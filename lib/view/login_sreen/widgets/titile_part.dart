import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/view/login_sreen/login.dart';

class TitlePart extends StatelessWidget {
  const TitlePart({
    super.key,
    required this.widget,
  });

  final LoginScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
