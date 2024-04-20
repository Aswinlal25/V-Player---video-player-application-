import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/controller/theme/theme_controler.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  _CustomBottomSheetState createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.background,
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                Container(
                  height: 140,
                  child: ListTile(
                    title: Text(
                      'Change Theme',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 2,
                      ),
                    ),
                    trailing: Switch(
                      activeColor: theme.colorScheme.primary,
                      inactiveThumbColor: theme.colorScheme.secondary,
                      activeTrackColor: theme.colorScheme.secondary,
                      //inactiveTrackColor: theme.colo,
                      value: _isDarkModeEnabled,
                      onChanged: (value) {
                        setState(() {
                          _isDarkModeEnabled = value;
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme();
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 50,
                  child: Text(
                    'Switch ON to change the mode',
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
