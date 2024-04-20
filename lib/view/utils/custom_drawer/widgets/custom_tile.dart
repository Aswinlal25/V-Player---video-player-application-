import 'package:flutter/material.dart';

class CustomdrawerTile extends StatelessWidget {
  const CustomdrawerTile({
    super.key,
    required this.theme,
    required this.title,
    this.onTap,
    required this.icon,
  });

  final ThemeData theme;
  final String title;
  final Function()? onTap;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(
              color: theme.colorScheme.primary,
              letterSpacing: 1,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
