import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.nameController,
    required this.phoneNoController,
    required this.downloadUrl,
    required this.emailController,
    required this.dobController,
    required this.theme,
    required this.screenSize,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final TextEditingController nameController;
  final TextEditingController phoneNoController;
  final String downloadUrl;
  final TextEditingController emailController;
  final TextEditingController dobController;
  final ThemeData theme;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Form is valid, proceed with submission
          context.read<AuthBloc>().add(
                AuthEvent.addUserdata(
                  name: nameController.text,
                  mobile: phoneNoController.text,
                  image: downloadUrl,
                  email: emailController.text,
                  dateOfBirth: dobController.text,
                  context: context,
                ),
              );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
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
              'Continue',
              style: TextStyle(
                fontSize: screenSize.width * 0.04,
                color: theme.colorScheme.background,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
