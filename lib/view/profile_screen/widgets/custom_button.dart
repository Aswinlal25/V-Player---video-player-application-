import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    super.key,
    required this.download,
    this.onTap,
    required this.buttoncolor,
  });
  final Function()? onTap;
  final IconData download;
  final Color buttoncolor;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: theme.colorScheme.background,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Icon(
          download,
          color: buttoncolor,
        ),
      ),
    );
  }
}
