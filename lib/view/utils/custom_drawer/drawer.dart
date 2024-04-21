import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/view/download_screen/download.dart';
import 'package:video_player/view/profile_screen/profile.dart';
import 'package:video_player/view/settings_screen/settings.dart';
import 'package:video_player/view/utils/constants/constants.dart';
import 'package:video_player/view/utils/custom_drawer/widgets/custom_tile.dart';
import 'package:video_player/view/utils/dialog_boxs/logout_dialog.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.colorScheme.background,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: theme.colorScheme.onSecondary,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            height: MediaQuery.of(context).size.height * 0.11,
                            decoration: logoContainerStyle(),
                            child: Image.asset(
                                'assets/images/Video_player_logo-removebg-preview.png')),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'V Player',
                          style: logoTxtstyle(),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomdrawerTile(
                    theme: theme,
                    title: 'Profile',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserProfileScreen()));
                    },
                    icon: Icon(CupertinoIcons.person_fill),
                  ),
                  CustomdrawerTile(
                    theme: theme,
                    title: 'Downloads',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DownloadScreen()));
                    },
                    icon: Icon(download),
                  ),
                  CustomdrawerTile(
                    theme: theme,
                    title: 'Settings',
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SettingsPage()));
                    },
                    icon: Icon(Icons.settings),
                  ),
                  CustomdrawerTile(
                    theme: theme,
                    title: 'About us',
                    onTap: () {},
                    icon: Icon(CupertinoIcons.info_circle_fill),
                  ),
                  CustomdrawerTile(
                    theme: theme,
                    title: 'Logout',
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return LogoutDialog();
                          }));
                    },
                    icon: Icon(CupertinoIcons.square_arrow_right),
                  ),
                  SizedBox(
                    height: 280,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
