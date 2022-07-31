import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_apps/component/question_controller.dart';
import 'package:quiz_apps/screen/quiz/biology/body.dart';
import 'package:websafe_svg/websafe_svg.dart';

class BquizScreen extends StatelessWidget {
  const BquizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: _controller.nextQuestion,
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
