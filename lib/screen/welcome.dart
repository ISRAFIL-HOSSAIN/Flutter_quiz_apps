import 'package:flutter/material.dart';
import 'package:quiz_apps/component/Roundedbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key, this.title}) : super(key: key);
  
  final String? title;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
  
}

class _WelcomeScreenState extends State<WelcomeScreen> {
   
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child:Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              bor
            )
          ),
        )
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(),
                    RoundedButton(
                      colour: Colors.lightBlueAccent,
                      title: 'Log In',
                      onPressed: () => print("login page"),
                      // {
                      //   // Navigator.pushNamed(context, '');
                      // },
                    ),
                    RoundedButton(
                      colour: Colors.blueAccent,
                      title: 'Sign Up',
                      onPressed: () => print('Signup Page'),
                      // {
                      //   Navigator.pushNamed(context, '');
                      // }
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
