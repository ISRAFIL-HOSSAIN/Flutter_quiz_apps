// import 'package:flutter/material.dart';
// import 'package:quiz_apps/component/constant.dart';
// import '../../data/question_list.dart';

// class QuizQuestion extends StatefulWidget {
//   const QuizQuestion({Key? key}) : super(key: key);

//   @override
//   State<QuizQuestion> createState() => _QuizQuestionState();
// }

// class _QuizQuestionState extends State<QuizQuestion> {
//   PageController? _controller = PageController(initialPage: 0);
//   bool isPressed = false;
//   Color isTrue = correct;
//   Color isWrong = incorrect;
//   Color btnColor = secondColor;
//   int score  = 0; 
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         //decoration: BoxDecoration(image: DecorationImage(image: AssetImage(assetName))),
//         child: Scaffold(
//           backgroundColor: mainColor,
//           // appBar: AppBar(
//           //     title: const Text("Science",
//           //         style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800))),
//           body: Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: PageView.builder(
//               itemCount: questions.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       width: double.infinity,
//                       child: Text(
//                         "Question ${index + 1} / ${questions.length}",
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w300,
//                           fontSize: 28.0,
//                         ),
//                       ),
//                     ),
//                     const Divider(
//                       color: Colors.white,
//                       height: 8.0,
//                       thickness: 1.0,
//                     ),
//                     const SizedBox(
//                       height: 20.0,
//                     ),
//                     Text(
//                       questions[index].question!,
//                       style:
//                           const TextStyle(color: Colors.white, fontSize: 28.0),
//                     ),
//                     const SizedBox(
//                       height: 40.0,
//                     ),
//                     for (int i = 0; i < questions[index].answer!.length; i++)
//                       Container(
//                         width: double.infinity,
//                         margin: const EdgeInsets.only(bottom: 18.0),
//                         child: MaterialButton(
//                             padding: const EdgeInsets.symmetric(vertical: 18.0),
//                             shape: const StadiumBorder(),
//                             color: isPressed
//                                 ? questions[index]
//                                         .answer!
//                                         .entries
//                                         .toList()[i]
//                                         .value
//                                     ? isTrue
//                                     : isWrong
//                                 : secondColor,
//                             onPressed: () {
//                               setState(() {
//                                 isPressed = true;
//                               });
//                               if (questions[index]
//                                   .answer!
//                                   .entries
//                                   .toList()[i]
//                                   .value) {
//                                 setState(() {
//                                   btnColor = isTrue;
//                                 });
//                               } else {
//                                 setState(() {
//                                   btnColor = isWrong;
//                                 });
//                               }
//                             },
//                             child: Text(
//                               questions[index].answer!.keys.toList()[i],
//                               style: const TextStyle(color: Colors.white),
//                             )),
//                       ),
//                     const SizedBox(
//                       height: 50.0,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         OutlinedButton(
//                           onPressed: () {},
//                           child: const Text(
//                             "Next Question",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// //https://www.youtube.com/watch?v=N-Jw-Nf_gZ0&list=RDCMUCCkjYARLbR1ws4_lMuvJ2vg&start_radio=1&rv=N-Jw-Nf_gZ0&t=18