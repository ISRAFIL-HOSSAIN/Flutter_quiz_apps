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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 241, 244),
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notification_add_rounded), onPressed: () {}),
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: background,
      ),
      body: Column(children: [
        const CircleAvatar(
          backgroundColor: Colors.black,
        ),
        const Text("Israfil Hossain"),
        Row(
          children: [
            Column(
              children: const [
                Text("45"),
                Text("Rank"),
              ],
            ),
            Column(
              children: const [
                Text("#33"),
                Text("Level"),
              ],
            ),
          ],
        )
      ]),
    );
  }
}
