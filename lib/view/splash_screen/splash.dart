import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/view/auth_page/auth_page.dart';
import 'package:video_player/view/utils/constant_colors/colors.dart';

class SplashSreen extends StatefulWidget {
  const SplashSreen({super.key});

  @override
  State<SplashSreen> createState() => _SplashSreenState();
}

class _SplashSreenState extends State<SplashSreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const AuthPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.30,
                height: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Image.asset(
                    'assets/images/Video_player_logo-removebg-preview.png')),
          )
        ],
      ),
    );
  }
}
