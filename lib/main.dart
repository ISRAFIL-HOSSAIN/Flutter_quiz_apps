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
     initialRoute: 'Splash_Screen',
     routes: {
      'Splash_Screen' : (context)=>SplashScreen(),
      'welcom_screen' :(context) => WelcomeScreen(),
      //'signup_screen' :(context) => SignUpScreen(),
      //'login_screen' : (context) => LoginScreen(),
      'home_screen' : (context)=> HomePage(),
     },
     
    );
  }
}
