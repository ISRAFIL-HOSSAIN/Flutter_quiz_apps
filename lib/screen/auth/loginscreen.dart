import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // backButton Widget 

  Widget _backButton(){
    return InkWell(
      onTap: ()=> Navigator.pop(context),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,),
        child: Row(children: [
          Container(
            padding: EdgeInsets.only(left:0,top: 10,bottom: 10),
            child: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
          ),
          Text('back',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,),)
        ]),
      ),
    );
  }

  Widget _entryField(String title,{bool isPassword = false}){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),
          ),
          SizedBox(height: 10,),
          TextField(
            obscureText:  ,
          )
        ],
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -height * .15,
            right: -MediaQuery.of(context).size.width * .4,
            child: BezierContainer(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: height * .2), 
                _title(), 
                SizedBox(height: 50,),
                _emailPasswordWidget(), 
                SizedBox(height: 20,),
                _submitButton(),
                Container(padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerRight,
                child: Text('Forgot Password ?', 
                style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500),
                ),
                _divider(),
                _facebookButton(),
                SizedBox(height: height * .055,),
                _createAccountLabel(),
                ),
              ],
            )),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    ),
    );
  }
}
