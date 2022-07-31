import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_apps/component/question_controller.dart';
import 'package:quiz_apps/screen/page.dart';
import 'package:websafe_svg/websafe_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access quiz Controller
    QuestionController _qsController = Get.put(QuestionController());
    return Stack(
      children: [
        WebsafeSvg.asset("assets/images/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(TextSpan(
                    text: "Question ",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: "${_qsController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(color: Colors.white),
                      ),
                      TextSpan(
                        text: "/ ${_qsController.questions.length}",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: kSecondaryColor),
                      )
                    ],
                  )),
                ),
              ),
              const Divider(
                thickness: 1.5,
                color: Colors.grey,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Expanded(
                child: PageView.builder(
                  // block go to next question
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: _qsController.updateTheQnNum,
                  controller: _qsController.pageController,
                  itemCount: _qsController.questions.length,
                  itemBuilder: (context, index) =>
                      QuestionCard(question: _qsController.questions[index]),

                  // QuestionCard(question: _questionController.questions),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
