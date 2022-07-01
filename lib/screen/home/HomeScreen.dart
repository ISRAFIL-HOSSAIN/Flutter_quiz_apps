import 'package:flutter/material.dart';

import '../../models/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text('home'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: Text(
            'HomePage',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
        ),
      );
}
