import 'package:flutter/material.dart';

import '../../models/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.height / 3;
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text('home'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 190,
                    child: Card(
                      child: ListTile(
                          title: Text(
                        'Bangla',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 118, 49, 49),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: 190,
                    child: Card(
                      child: ListTile(
                          title: Text(
                        'Bangla',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
          
        ),
      ),
    );
  }
}
