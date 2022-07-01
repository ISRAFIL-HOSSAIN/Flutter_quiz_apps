import 'package:flutter/material.dart';

import '../page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text('setting'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
        ),
        body: const Center(
          child: Text(
            'Setting Page',
            style: TextStyle(
              fontSize: 60,
            ),
          ),
        ),
      ),
    );
  }
}
