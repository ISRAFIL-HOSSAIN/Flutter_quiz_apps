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
                        Navigator.pushNamed(context, 'home_screen');
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
                        Navigator.pushNamed(context, 'home_screen');
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
                        Navigator.pushNamed(context, 'home_screen');
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
                        Navigator.pushNamed(context, 'home_screen');
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
                // Row(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
