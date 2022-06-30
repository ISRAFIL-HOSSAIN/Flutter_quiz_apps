import 'package:flutter/material.dart';
import './screen/page.dart';

void main() {
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
        'welcome_screen': (context) => const WelcomeScreen(),
        //'signup_screen' :(context) => SignUpScreen(),
        //'login_screen' : (context) => LoginScreen(),
        'home_screen': (context) => const HomePage(),
      },
    );
  }
}
