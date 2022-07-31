import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_apps/component/question_controller.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:confetti/confetti.dart';

import '../../page.dart';

class PrizeScreen extends StatefulWidget {
  PrizeScreen({Key? key}) : super(key: key);

  @override
  State<PrizeScreen> createState() => _PrizeScreenState();
}

class _PrizeScreenState extends State<PrizeScreen> {
  late ConfettiController confettiController;

  @override
  void initState() {
    super.initState();
    setState(() {
      initController();
    });
    confettiController.play();
  }

  void initController() {
    confettiController =
        ConfettiController(duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());

    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        WebsafeSvg.asset("assets/images/bg.svg"),
        Column(
          children: [
            Spacer(),
            Image.asset("assets/images/Congratulation.png"),
            Text(
              "Congratulation!",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Text(
              "Your Score is : ",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "${_qnController.correctAns * 10}" +
                  "/" +
                  "${_qnController.questions.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(kDefaultPadding * 0.5),
                decoration: const BoxDecoration(
                  gradient: kPrimaryGradient,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Text(
                  "Test Again",
                  style: Theme.of(context).textTheme.button?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
        buildConfettiWidget(confettiController, pi / 2),
      ])),
    );
  }

  Align buildConfettiWidget(controller, double blastDirection) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        maximumSize: Size(20, 30),
        shouldLoop: false,
        confettiController: controller,
        blastDirection: blastDirection,
        blastDirectionality: BlastDirectionality.explosive,
        maxBlastForce: 20,
        minBlastForce: 8,
        emissionFrequency: 0.5,
        numberOfParticles: 8, 
        gravity: 0.01,
      ),
    );
  }
}
