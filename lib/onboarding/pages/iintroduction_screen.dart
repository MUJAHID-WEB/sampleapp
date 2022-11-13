import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:portfolio/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('images/1.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
    // PageViewModel(
    //     title: 'Have Access Everywhere!',
    //     body:
    //         'Here you can have whatever description you would like to have, you can type it all in here',
    //     footer: SizedBox(
    //       height: 45,
    //       width: 300,
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(

    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(20)),
    //             elevation: 8),
    //         onPressed: () {},
    //         child: const Text(
    //           "Why to wait!",
    //           style: TextStyle(fontSize: 20),
    //         ),
    //       ),
    //     ),
    //     image: Center(
    //       child: Image.asset('images/2.png'),
    //     ),
    //     decoration: const PageDecoration(
    //         titleTextStyle: TextStyle(
    //       fontSize: 25.0,
    //       fontWeight: FontWeight.bold,
    //     ))),
    PageViewModel(
        title: 'Here We Start!',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          ),
        ),
        image: Center(
          child: Image.asset('images/3.png'),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter on Boarding UI'),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.of(context).push(
      PageTransition(
        type: PageTransitionType.rightToLeftPop,
        duration: Duration(seconds: 2),
        reverseDuration: Duration(seconds: 3),
        // alignment: Alignment.topCenter,
        child: LoginPage(),
      ),
    );
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
