// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/controller/service/auth.dart';

class LogoutDialog extends StatelessWidget {
  static const IconData heart_broken_sharp =
      IconData(0xf0421, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 0,
        backgroundColor: theme.colorScheme.background,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 68),
                          Text(
                            "Are you sure you want to log out \nof your account?",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: theme.colorScheme.primary,
                                letterSpacing: 0.4,
                                wordSpacing: 1),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 35),
                          ElevatedButton(
                            onPressed: () {
                              try {
                                // context
                                //     .read<AuthBloc>()
                                //     .add(AuthEvent.signOut(context: context));
                                // AuthApi authApi = AuthApi();
                                // authApi.logout();
                                // Navigator.pop(context);
                                // Navigator.pop(context);

                                AuthRepositary authRepositary =
                                    AuthRepositary();
                                authRepositary.logout(context);
                              } catch (e) {
                                print('Error: $e');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SizedBox(
                                height: 20,
                                width: 90,
                                child: Center(
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: theme.colorScheme.background,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
