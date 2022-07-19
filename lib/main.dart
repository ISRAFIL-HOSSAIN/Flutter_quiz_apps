import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_apps/screen/quiz/quizintro.dart';
import './screen/page.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Splash_Screen',
       routes: {
        'Splash_Screen': (context) => const SplashScreen(),
        'welcome_screen': (context) => WelcomeScreen(),
        'signup_screen': (context) => SignupPage(),
        'login_screen': (context) => LoginPage(),
        'home_screen': (context) => const HomePage(),
        'homepage': (context) => const HomeScreen(),
        'setting_page': (context) => const SettingPage(),
        'profile_page': (context) => const ProfilePage(),
        'QuizIntro' : (context) => const QuizIntro(),
       },
    );
  }
}
