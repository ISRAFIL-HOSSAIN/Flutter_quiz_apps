import 'package:flutter/material.dart';

import '../../component/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var sizeh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 241, 244),
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.notification_add_rounded),
                onPressed: () {}),
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: background,
        ),
        //shadowColor: Colors.transparent,

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
                    childAspectRatio: (1 / .7),
                  ),
                  children: [
                    // Card 1
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/generalpng.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'General',
                              style: TextStyle(
                                color: Color.fromARGB(188, 51, 50, 50),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
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
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/bio.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'Biology',
                              style: TextStyle(
                                color: Color.fromARGB(188, 51, 50, 50),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Card 2
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/science.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'Science',
                              style: TextStyle(
                                color: Color.fromARGB(188, 51, 50, 50),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Card - 3
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'QuizIntro');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset(
                                'assets/images/world.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            // Icon(
                            //   Icons.home,
                            //   size: 50,
                            //   color: Colors.white60,
                            // ),
                            const Text(
                              'World',
                              style: TextStyle(
                                color: Color.fromARGB(188, 51, 50, 50),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 22 * 0,
                  child: Container(
                    height: 85,
                    width: 340,

                    // color: Color.fromRGBO(208, 208, 208, 0.451),
                    child: Card(
                      elevation: 2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center),
                                Text(
                                    'অ্যাপ সম্পর্কে বিস্তারিত সব তথ্য পাবেন ভিডিওতে ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 123, 122, 122),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 45,
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
