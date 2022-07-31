import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';

import './screen/page.dart';
import './screen/quiz/quiz.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Splash_Screen',
        routes: {
          'Splash_Screen': (context) => const SplashScreen(),
          'welcome_screen': (context) => const WelcomeScreen(),
          'signup_screen': (context) => const SignupPage(),
          'login_screen': (context) => const LoginPage(),
          'home_screen': (context) => const HomePage(),
          'homepage': (context) => const HomeScreen(),
          'setting_page': (context) => const SettingPage(),
          'profile_page': (context) => const ProfilePage(),
          'QuizIntro': (context) =>  QuizIntro(),
          //'Question' : (context) => const QuizQuestion(),
          //'Prize': (context) => PrizeScreen(),
          'Bquesiton': (context) => const BquizScreen(),
        },
      ),
    );
  }
}
