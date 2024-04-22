import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/controller/bussiness_logic/profile/profile_bloc.dart';
import 'package:video_player/controller/functions/auth.dart';
import 'package:video_player/model/videomodel/videomoel.dart';
import 'package:video_player/view/profile_create_screen/profile_create.dart';
import 'package:video_player/view/profile_screen/profile.dart';
import 'package:video_player/view/utils/custom_drawer/drawer.dart';
import 'package:video_player/view/video_plater/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearchClicked = false;
  List<Videos> users = [];
  List<Videos> filteredUsers = [];
  AuthRepositary authRepositary = AuthRepositary();
  TextEditingController searchController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  void fetchUsers() async {
    try {
      List<Videos> fetchedUsers = await authRepositary.getAllvideos();
      setState(() {
        users.clear();
        users.addAll(fetchedUsers);
      });
    } catch (error) {
      print("Error fetching users: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: theme.colorScheme.background,
      drawer: MyDrawer(),
      appBar: null,
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          context.read<ProfileBloc>().add(const ProfileEvent.getUserData());
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: 110,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSecondary,
                  boxShadow: [
                    BoxShadow(
                      color: isSearchClicked
                          ? Colors.grey.withOpacity(0.0)
                          : Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 28),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: Image(
                          width: 38,
                          height: 38,
                          image: AssetImage('assets/images/menus (1).png'),
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProfileCreateScreen()));
                        },
                        child: Text(
                          'V Player',
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1,
                              fontSize: 20),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        child: SizedBox(),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isSearchClicked = !isSearchClicked;
                          });
                        },
                        child: Icon(
                          CupertinoIcons.search,
                          color: !isSearchClicked
                              ? Colors.white
                              : theme.colorScheme.secondary,
                        ),
                      ),
                      SizedBox(width: 20),
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
                      SizedBox(width: MediaQuery.of(context).size.width * 0.07),
                    ],
                  ),
                ),
              ),
              isSearchClicked
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 49,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: TextField(
                          controller: searchController,
                          style: TextStyle(color: Colors.white70),
                          decoration: InputDecoration(
                            hintText: '  Search...',
                            hintStyle: TextStyle(
                              color: Colors.white60,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onChanged: (value) {
                            filterUsers(value);
                          },
                        ),
                      ),
                    )
                  : SizedBox(),
              Expanded(
                child: ListView.builder(
                  itemCount:
                      isSearchClicked ? filteredUsers.length : users.length,
                  itemBuilder: (context, index) {
                    final video =
                        isSearchClicked ? filteredUsers[index] : users[index];
                    final String title = video.title ?? '';
                    final String description =
                        video.description ?? 'exploring fantastical worlds';
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerScreen(
                              Url: video.videos ?? '',
                              title: title,
                              image: state.image,
                              description: video.description ?? '',
                            ),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/video-placeholder.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                description,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void filterUsers(String query) {
    setState(() {
      filteredUsers.clear();
      if (query.isNotEmpty) {
        filteredUsers = users
            .where((user) =>
                user.title!.toLowerCase().contains(query.toLowerCase()))
            .toList();

        filteredUsers.sort((a, b) =>
            a.title!.toLowerCase().indexOf(query.toLowerCase()) -
            b.title!.toLowerCase().indexOf(query.toLowerCase()));
      } else {
        filteredUsers.addAll(users);
      }
    });
  }
}
