import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:video_player/controller/bussiness_logic/profile/profile_bloc.dart';
import 'package:video_player/controller/theme/theme_controler.dart';
import 'package:video_player/controller/window_secure/secure.dart';
import 'package:video_player/view/download_screen/download.dart';
import 'package:video_player/view/home_screen/home.dart';
import 'package:video_player/view/profile_screen/widgets/custom_button.dart';
import 'package:video_player/view/utils/constants/constants.dart';
import 'package:video_player/view/utils/dialog_boxs/logout_dialog.dart';

class UserProfileScreen extends StatelessWidget {
  static const IconData logout_outlined =
      IconData(0xf199, fontFamily: 'MaterialIcons');
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileBloc>().add(const ProfileEvent.getUserData());

    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        leading: InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
                (route) => false);
          },
          child: Icon(
            CupertinoIcons.back,
            color: theme.colorScheme.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            SecureWindow secureWindow = SecureWindow();
            secureWindow.flagon;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 244, 54, 114),
                      ),
                      child: Center(
                        child: Container(
                          width: 190,
                          height: 190,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: theme.colorScheme.background,
                          ),
                          child: Center(
                            child: Hero(
                              tag: 'currentUserPicture',
                              child: state.image.isNotEmpty
                                  ? Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          image: NetworkImage(state.image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/demo_user.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButtons(
                        download: download,
                        buttoncolor: Colors.green,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => DownloadScreen()));
                        },
                      ),
                      CustomButtons(
                        download: Icons.brightness_3,
                        buttoncolor: Colors.blue,
                        onTap: () {
                          Provider.of<ThemeProvider>(context, listen: false)
                              .toggleTheme();
                        },
                      ),
                      CustomButtons(
                        download: logout_outlined,
                        buttoncolor: Colors.red,
                        onTap: () {
                          showDialog(
                              context: context, builder: (_) => LogoutDialog());
                        },
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Name',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          state.name,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 29,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          state.email,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Date of Birth',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          state.dateOfBirth,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'V Player: Your Go-To for Video Streaming and Downloads. Enjoy crystal-clear video streaming, seamless downloads, and smooth playback with V Player. Stream your favorite videos online or download them for offline viewing. Join the V Player community and experience the convenience of real-time video communication. Download now and elevate your video experience.',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontWeight: FontWeight.w300,
                            fontSize: 11,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
