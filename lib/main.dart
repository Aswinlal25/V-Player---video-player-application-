import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:video_player/controller/bussiness_logic/auth/auth_bloc.dart';
import 'package:video_player/controller/bussiness_logic/profile/profile_bloc.dart';

import 'package:video_player/controller/theme/theme_controler.dart';
import 'package:video_player/firebase_options.dart';
import 'package:video_player/view/splash_screen/splash.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(),
          ),
          BlocProvider(
            create: (context) => ProfileBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'V palyer',
          theme: Provider.of<ThemeProvider>(context).themData,
          home: const SplashSreen(),
        ));
  }
}
