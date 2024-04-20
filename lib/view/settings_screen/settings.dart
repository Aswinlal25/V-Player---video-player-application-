import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/view/settings_screen/widgets/custom_tile.dart';
import 'package:video_player/view/settings_screen/widgets/privacy_policy.dart';
import 'package:video_player/view/settings_screen/widgets/theme_screen.dart';
import 'package:video_player/view/utils/constants/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.back,
            color: theme.colorScheme.primary,
          ),
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
            fontSize: 19,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            CustomTile(
              title: 'Theme',
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomBottomSheet();
                  },
                );
              },
            ),
            CustomTile(
              title: 'Privacy and Policy',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => PolicyScreen(
                              mdFileName: 'privacy_policy.md',
                              title: 'Privacy and Policy',
                            )));
              },
            ),
            InkWell(
              onTap: () {
                FlutterClipboard.copy('hello flutter friends').then((value) {
                  print('copied');
                  showCustomSnackbar(context, ' Email Copied to Clipboard');
                });
              },
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Support Email',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 2,
                      ),
                    ),
                    Text(
                      'laswin770@gmail.com',
                      style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          letterSpacing: 1),
                    ),
                  ],
                ),
                trailing: Text(
                  'Tap to copy',
                  style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      letterSpacing: 1),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
