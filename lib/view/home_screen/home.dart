import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/view/profile_screen/profile.dart';
import 'package:video_player/view/utils/custom_drawer/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSearchCClicked = false;
  static const IconData download =
      IconData(0xe201, fontFamily: 'MaterialIcons');
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: theme.colorScheme.background,
      drawer: MyDrawer(),
      appBar: null,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 110,
            decoration: BoxDecoration(
              color: theme.colorScheme.onSecondary,
              boxShadow: [
                BoxShadow(
                  color: isSearchCClicked
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
                      image: AssetImage('assets/images/menus (1).png'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'V Player',
                    style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        fontSize: 20),
                  ),

                  Spacer(),

                  Expanded(
                    child: SizedBox(),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          isSearchCClicked = !isSearchCClicked;
                        });
                      },
                      child: Icon(
                        CupertinoIcons.search,
                        color: !isSearchCClicked
                            ? Colors.white
                            : theme.colorScheme.secondary,
                      )),
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
                          child:
                              // userModel != null &&
                              //         userModel!.image != null &&
                              //         userModel!.image!.isNotEmpty
                              //     ? Container(
                              //         width: 35,
                              //         height: 35,
                              //         decoration: BoxDecoration(
                              //           borderRadius:
                              //               BorderRadius.circular(5),
                              //           image: DecorationImage(
                              //             image: NetworkImage(
                              //               userModel!.image!,
                              //             ),
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       )
                              //     :
                              Container(
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
                  SizedBox(width: screenSize.width * 0.07), // Adjusted spacing
                ],
              ),
            ),
          ),
          isSearchCClicked
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
                      style: TextStyle(color: Colors.white70),
                      decoration: InputDecoration(
                        hintText: '  Search...',
                        hintStyle: TextStyle(
                          color: Colors.white60,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.amber),
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                      onChanged: (value) {
                        //filterUsers(value);
                      },
                    ),
                  ),
                )
              : SizedBox(),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage('assets/images/demo_user.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mohan lal || Lucifer Movie',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '25.2 Mp',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      download,
                      color: Colors.green,
                    )
                  ],
                );
                //VideoWidget(videoUrl: videoUrls[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
