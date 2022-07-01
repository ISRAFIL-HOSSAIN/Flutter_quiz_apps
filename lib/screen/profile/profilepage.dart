import 'package:flutter/material.dart';

import '../page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text('profile'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
        ),
        body: const Center(
          child: Text(
            'ProfilePage .....',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
        ),
      ),
    );
  }
}
