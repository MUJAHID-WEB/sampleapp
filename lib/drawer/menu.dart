import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../page1.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.blueAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
          SafeArea(
              child: Container(
                  width: 200.0,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    SizedBox(
                      height: 450,
                      child: DrawerHeader(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 60.0,
                              backgroundImage: AssetImage(
                                "images/app_logo.png",
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "DevFirm Ltd",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ListTile(
                              // onTap: () {},
                              //                     onTap: () {
                              //   Get.to(() => Challenge02_01(),
                              //       transition: Transition.circularReveal,
                              //       duration: Duration(seconds: 2));
                              // },
                              title: Text(
                                'Home',
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                            ),

                            // Divider(
                            //   height: 0.2,
                            // ),
                            ListTile(
                              // onTap: () {},
                              title: Text(
                                'Profile',
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            ListTile(
                              // onTap: () {},
                              title: Text(
                                'Settings',
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            ),
                            ListTile(
                              // onTap: () {},
                              title: Text(
                                'Log Out',
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]))),

          // Main Scrren
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY((pi / 6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("3D Drawer menu"),
                    ),
                    body: Center(
                      child: Text(
                        'Swipe right to open the menu',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ));
              }),

          // Gesture Detector
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
              ;
            },
            // onTap: () {
            //   setState(() {
            //     value == 0 ? value = 1 : value = 0;
            //   });
            // },
          ),
        ],
      ),
    );
  }
}
