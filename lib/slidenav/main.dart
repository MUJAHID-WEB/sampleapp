import 'package:flutter/material.dart';

import 'drawerScreen.dart';
import 'homeScreen.dart';
// void main(){
//   runApp(MaterialApp(home: HomePage(),
//   theme: ThemeData(
//     fontFamily: 'Circular'
//   ),
//   ));
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           DrawerScreen(),
//           HomeScreen()

//         ],
//       ),

//     );
//   }
// }

class SlideNav extends StatefulWidget {
  const SlideNav({super.key});

  @override
  State<SlideNav> createState() => _SlideNavState();
}

class _SlideNavState extends State<SlideNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [DrawerScreen(), HomeScreen()],
      ),
    );
  }
}
