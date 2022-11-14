import 'dart:math';
import 'dart:ui';

import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:portfolio/login_screen.dart';
import 'package:get/get.dart';
import 'package:portfolio/model/user.dart';
import 'package:portfolio/page/edit_profile_page.dart';
import 'package:portfolio/page2.dart';
import 'package:portfolio/utils/user_preferences.dart';
import 'package:portfolio/widget/appbar_widget.dart';
import 'package:portfolio/widget/button_widget.dart';
import 'package:portfolio/widget/numbers_widget.dart';
import 'package:portfolio/widget/profile_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey, Colors.blueGrey],
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
                    bottomNavigationBar: CurvedNavigationBar(
                      backgroundColor: Colors.grey.shade900,
                      color: Colors.grey.shade800,
                      animationDuration: Duration(milliseconds: 500),
                      items: <Widget>[
                        Icon(Icons.home, size: 30),
                        Icon(Icons.favorite, size: 30),
                        Icon(Icons.settings, size: 30),
                      ],
                      onTap: (index) {
                        //Handle button tap
                      },
                    ),
                    appBar: buildAppBar(context),
                    body: ListView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        ProfileWidget(
                          imagePath: user.imagePath,
                          onClicked: () async {
                            await Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => EditProfilePage()),
                            );
                            setState(() {});
                          },
                        ),
                        const SizedBox(height: 24),
                        buildName(user),
                        const SizedBox(height: 24),
                        NumbersWidget(),
                        const SizedBox(height: 48),
                        buildAbout(user),
                        const SizedBox(height: 120),
                        Center(child: buildUpgradeButton()),
                      ],
                    ),

                    //     ZoomDrawer(
                    //   controller: _drawerController,
                    //   style: DrawerStyle.Style1,
                    //   menuScreen: MenuScreen(),
                    //   mainScreen: MainScreen(),
                    //   borderRadius: 24.0,
                    //   showShadow: true,
                    //   angle: 0.0,
                    //   backgroundColor: Colors.grey[300],
                    //   slideWidth: MediaQuery.of(context).size.width *
                    //       (ZoomDrawer.isRTL() ? .45 : 0.65),
                    //   openCurve: Curves.fastOutSlowIn,
                    //   closeCurve: Curves.bounceIn,
                    // ),

                    // drawer: Drawer(
                    //   //drawer: It is a slider panel that is displayed at the side of the body. Usually, it is hidden on the mobile devices, but the user can swipe it left to right or right to left to access the drawer menu. It uses the Drawer widget properties slides in a horizontal direction from the Scaffold edge to show navigation links in the application. An appropriate icon for the drawer is set automatically in an appBar property. The gesture is also set automatically to open the drawer.
                    //   elevation: 10.0,
                    //   child: Column(children: const <Widget>[
                    //     UserAccountsDrawerHeader(
                    //       //DrawerHeader is used to modify the header of the panel. In header we can display icon or details of user according to the application
                    //       accountName: Text('Mujahid'),
                    //       accountEmail: Text('mujahid30390@gmail.com'),
                    //       currentAccountPicture: CircleAvatar(
                    //         backgroundColor: Colors.black,
                    //         child: Text('M'),
                    //       ),
                    //     ),
                    //     ListTile(
                    //       //ListTile to add the list items in the menu.
                    //       title: Text('Inbox'),
                    //       leading: Icon(Icons.mail),
                    //     ),
                    //     Divider(
                    //       height: 0.2,
                    //     ),
                    //     ListTile(
                    //       title: Text('Primary'),
                    //       leading: Icon(Icons.inbox),
                    //     ),
                    //     ListTile(
                    //       title: Text('Social'),
                    //       leading: Icon(Icons.people),
                    //     ),
                    //     ListTile(
                    //       title: Text('Promotions'),
                    //       leading: Icon(Icons.local_offer),
                    //     ),
                    //   ]),
                    // ),
                  ),
                ));
              },
            ),
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
              },
              // onTap: () {
              //   setState(() {
              //     value == 0 ? value = 1 : value = 0;
              //   });
              // },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildAbout(User user) => Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.about,
              style: TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
  Widget buildUpgradeButton() => ButtonWidget(
        text: 'Follow',
        // onClicked: () {},

        onClicked: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            // color is applied to main screen when modal bottom screen is displayed
            barrierColor: Colors.transparent,
            //background color for modal bottom screen
            backgroundColor: Colors.grey.shade800,
            //elevates modal bottom screen
            elevation: 10, //Elevates the snackbar by increasing shadow.
            // gives rounded corner to modal bottom screen
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            builder: (context) {
              //A builder for the contents of the sheet
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: const [
                    // TextField(
                    //   keyboardType: TextInputType.name,
                    //   decoration: InputDecoration(labelText: 'Name'),
                    // ),
                    // TextField(
                    //   keyboardType: TextInputType.number,
                    //   decoration: InputDecoration(labelText: 'Age'),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // ElevatedButton(onPressed: (){}),
                    ListTile(
                      leading: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Share',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.copy,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Copy Link',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Edit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
          // Get.to(() => const LoginPage(),
          //     transition: Transition.leftToRightWithFade,
          //     duration: const Duration(milliseconds: 900));
        },
      );
}
