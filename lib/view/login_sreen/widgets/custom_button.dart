import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';
import 'package:video_player/view/login_sreen/login.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.widget,
    required this.screenSize,
  });

  final LoginScreen widget;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
