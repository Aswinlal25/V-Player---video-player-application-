import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';
import 'package:video_player/controller/bussiness_logic/profile/profile_bloc.dart';

import 'package:video_player/view/utils/constants/constants.dart';

class ProfileCreateScreen extends StatefulWidget {
  const ProfileCreateScreen({Key? key});

  @override
  State<ProfileCreateScreen> createState() => _ProfileCreateScreenState();
}

class _ProfileCreateScreenState extends State<ProfileCreateScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  XFile? _image;
  bool _uploadingImage = false;
  static late String downloadUrl;

  @override
  void initState() {
    super.initState();
    phoneNoController.text = auth.currentUser!.phoneNumber.toString();
  }

  Future<void> pickImage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = pickedImage;
        _uploadingImage = true;
      });

      await uploadImageToFirebaseStorage(File(_image!.path));

      setState(() {
        _uploadingImage = false;
      });
    }
  }

  Future<void> uploadImageToFirebaseStorage(File imageFile) async {
    try {
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();
      firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child(fileName);
      firebase_storage.UploadTask uploadTask = ref.putFile(imageFile);
      firebase_storage.TaskSnapshot snapshot = await uploadTask;
      downloadUrl = await snapshot.ref.getDownloadURL();

      //await updateUserProfileImage(downloadUrl);
    } catch (error) {
      print('Error uploading image: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SingleChildScrollView(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(25),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 90),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                pickImage();
                              },
                              child: Container(
                                width: 197,
                                height: 197,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color:
                                      const Color.fromARGB(255, 244, 54, 114),
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
                                        child: _uploadingImage
                                            ? CircularProgressIndicator(
                                                strokeWidth: 3,
                                                color:
                                                    theme.colorScheme.primary,
                                              )
                                            : _image != null
                                                ? Container(
                                                    width: 180,
                                                    height: 180,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      image: DecorationImage(
                                                        image: FileImage(
                                                            File(_image!.path)),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  )
                                                : state.image.isEmpty
                                                    ? Container(
                                                        width: 170,
                                                        height: 170,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(
                                                                state.image),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )
                                                    : Container(
                                                        width: 170,
                                                        height: 170,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(25),
                                                          image:
                                                              DecorationImage(
                                                            image: AssetImage(
                                                                'asset/placeholderimage.webp'),
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
                            SizedBox(width: 10),
                            Text(
                              'Upload\nProfile Picture',
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0,
                                wordSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        CustomTextFormField(
                          hintText: 'Name',
                          keyboardType: TextInputType.name,
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              showCustomSnackbar(
                                  context, 'All fields are required');
                              return '';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        CustomTextFormField(
                          hintText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              showCustomSnackbar(
                                  context, 'All fields are required');
                              return null;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        CustomTextFormField(
                          hintText: 'Phone Number',
                          keyboardType: TextInputType.phone,
                          controller: phoneNoController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              showCustomSnackbar(
                                  context, 'All fields are required');
                              return null;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20),
                        CustomTextFormField(
                          hintText: 'Date of Birth',
                          keyboardType: TextInputType.datetime,
                          controller: dobController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              showCustomSnackbar(
                                  context, 'All fields are required');
                              return null;
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 60),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Form is valid, proceed with submission
                              context.read<AuthBloc>().add(
                                    AuthEvent.addUserdata(
                                      name: nameController.text,
                                      mobile: phoneNoController.text,
                                      image: downloadUrl,
                                      email: emailController.text,
                                      dateOfBirth: dobController.text,
                                      context: context,
                                    ),
                                  );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
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
                                    letterSpacing: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: theme.colorScheme.onPrimary, width: 2),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        style: TextStyle(color: theme.colorScheme.primary),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: theme.colorScheme.onPrimary.withOpacity(0.6),
            letterSpacing: 2,
            fontSize: 15,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    );
  }
}
