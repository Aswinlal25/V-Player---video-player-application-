// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:video_player/view/home_screen/home.dart';

class ProfileCreateScreen extends StatefulWidget {
  const ProfileCreateScreen({super.key});

  @override
  State<ProfileCreateScreen> createState() => _ProfileCreateScreenState();
}

class _ProfileCreateScreenState extends State<ProfileCreateScreen> {
  final TextEditingController nameComntroller = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: theme.colorScheme.secondary,
                    ),
                    child: Center(
                      child: Container(
                        width: 175,
                        height: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: theme.colorScheme.background,
                        ),
                        child: Center(
                          child: Hero(
                            tag: 'currentUserPicture',
                            child:
                                //  userModel != null &&
                                //         userModel!.image != null &&
                                //         userModel!.image!.isNotEmpty
                                //     ? Container(
                                //         width: 170,
                                //         height: 170,
                                //         decoration: BoxDecoration(
                                //           borderRadius: BorderRadius.circular(25),
                                //           image: DecorationImage(
                                //             image: NetworkImage(widget.image),
                                //             fit: BoxFit.cover,
                                //           ),
                                //         ),
                                //       )
                                //     :
                                Container(
                              width: 170,
                              height: 170,
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
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Upload\nProfile Picture',
                    style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 23,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0,
                        wordSpacing: 1),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                TextInputType: TextInputType.name,
                screenSize: screenSize,
                nameComntroller: nameComntroller,
                hinttext: 'Name',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                TextInputType: TextInputType.text,
                screenSize: screenSize,
                nameComntroller: emailController,
                hinttext: 'Email',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                TextInputType: TextInputType.number,
                screenSize: screenSize,
                nameComntroller: dobController,
                hinttext: 'Date of Birth',
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: theme.colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: screenSize.height * 0.040,
                    width: screenSize.width * 0.7,
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: theme.colorScheme.background,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.screenSize,
    required this.nameComntroller,
    required this.hinttext,
    this.TextInputType,
  });
  final String hinttext;
  final TextInputType;
  final Size screenSize;
  final TextEditingController nameComntroller;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      height: screenSize.height * 0.066,
      width: screenSize.width * 0.9,
      decoration: BoxDecoration(),
      child: TextFormField(
        controller: nameComntroller,
        keyboardType: TextInputType,

        style: TextStyle(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w400,
          fontSize: screenSize.width * 0.044,
          letterSpacing: 0.5,
        ),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: theme.colorScheme.onPrimary,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                color: theme.colorScheme.secondary,
                width: 2.0,
              ),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              letterSpacing: 2,
              fontSize: 15,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(20)),
        // onChanged: (value) {
        //   if (value.isNotEmpty) {
        //     setState(() {
        //       isnewnumber = true;
        //     });
        //   } else {
        //     setState(() {
        //       isnewnumber = false;
        //     });
        //   }
        // },
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     setState(() {
        //       isnewnumber = false;
        //     });
        //     showSnack(
        //         message:
        //             'Please enter your new phone number',
        //         context: context,
        //         color: kblack);
        //   }
        //   return null;
        // },
      ),
    );
  }
}
