import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:portfolio/zoomdrawer/main_screen.dart';

import 'menu_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();
  void toggleDrawer() {
    print("Toggle drawer");
    zoomDrawerController.toggle?.call();
    //update();
  }
  //   zoomDrawerController.open();
  //   zoomDrawerController.close();
  //   zoomDrawerController.toggle();
  //   zoomDrawerController.isOpen();
  //   zoomDrawerController.stateNotifier;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const MainScreen(),
      showShadow: true,
      //moveMenuScreen: true,
      borderRadius: 24.0,
      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: true,
      drawerShadowsBackgroundColor: Colors.grey.shade300,
      slideWidth: MediaQuery.of(context).size.width * 0.70,
      // slideWidth: MediaQuery.of(context).size.width *
      //       (ZoomDrawer.isRTL() ? .45 : 0.65),
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      //mainScreenTapClose:
    );
  }
}
