import 'package:flutter/material.dart';
import 'package:video_player/view/login_sreen/login.dart';
import 'package:video_player/view/signup_sreen.dart/signUp.dart';

class LoginOrSignUpPage extends StatefulWidget {
  const LoginOrSignUpPage({
    super.key,
  });

  @override
  State<LoginOrSignUpPage> createState() => _LoginOrSignUpPageState();
}

class _LoginOrSignUpPageState extends State<LoginOrSignUpPage> {
  bool ShowLoginPage = true;

  void togglePage() {
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShowLoginPage) {
      Color primary = Theme.of(context).colorScheme.primary;
      Color background = Theme.of(context).colorScheme.background;
      return LoginScreen(
        onTap: togglePage,
        primary: primary,
        background: background,
      );
    } else {
      return SignUpScreen(onTap: togglePage);
    }
  }
}
