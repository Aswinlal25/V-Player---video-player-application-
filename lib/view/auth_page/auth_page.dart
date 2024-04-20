import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:video_player/view/home_screen/home.dart';
import 'package:video_player/view/login_or_signup/login_or_signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // if user is logged in
            return HomeScreen();
          } else {
            // if user is Not logged in
            return LoginOrSignUpPage();
          }
        },
      ),
    );
  }
}
