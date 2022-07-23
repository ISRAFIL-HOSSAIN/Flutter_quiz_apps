import 'package:flutter/material.dart';

import '../../models/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeW = MediaQuery.of(context).size.width / 3;
    var sizeh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('home'),
          backgroundColor: background,
          shadowColor: Colors.transparent,
        ),
        body: Container(
          height: sizeh,
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Stack(
              children: <Widget>[
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    childAspectRatio: (1 / .8),
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: card1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/generalpng.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'General',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: card2,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/biology.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'Biology',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: card3,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/science.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'Science',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: card4,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/images/world.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'World',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 140,
                  child: Container(
                    height: 100,
                    width: sizeW * 2.8,
                    // color: Color.fromRGBO(208, 208, 208, 0.451),
                    child: Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 224, 224, 224),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text('কীভাবে কাজ করবেন ভিডিও ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 70, 131, 237),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                    'অ্যাপ সম্পর্কে বিস্তারিত সব তথ্য পাবেন ভিডিওতে ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 123, 122, 122),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: sizeh * 0.06,
                            width: sizeW * .55,
                            child: Image.asset(
                              'assets/images/youtube.png',
                              fit: BoxFit.cover,
                              alignment: Alignment.centerRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
