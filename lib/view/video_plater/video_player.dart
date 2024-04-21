import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/controller/bussiness_logic/profile/profile_bloc.dart';
import 'package:video_player/view/profile_screen/profile.dart';
import 'package:video_player/view/utils/constants/constants.dart';
import 'package:video_player/view/utils/custom_drawer/drawer.dart';

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({super.key, required this.Url, required this.title});
  final String Url;
  final String title;

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    //context.read<ProfileBloc>().add(const ProfileEvent.getUserData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: theme.colorScheme.background,
      drawer: MyDrawer(),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 12 / 9,
                    child: BetterPlayer.network(
                      widget.Url,
                      betterPlayerConfiguration: BetterPlayerConfiguration(
                        aspectRatio: 12 / 9,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(color: theme.colorScheme.primary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            download,
                            color: Colors.green,
                          ),
                          Text(
                            'Downloads',
                            style: TextStyle(
                                color: theme.colorScheme.background,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 28),
                  child: Row(
                    children: [
                      Hero(
                        tag: 'drawer',
                        child: InkWell(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          child: Image(
                            width: 38,
                            image: AssetImage('assets/images/menus (1).png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserProfileScreen()));
                        },
                        child: Center(
                          child: Center(
                            child: Hero(
                              tag: 'currentUserPicture',
                              child: state.image.isNotEmpty
                                  ? Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            state.image,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      width: 38,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/demo_user.jpeg',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.07),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
