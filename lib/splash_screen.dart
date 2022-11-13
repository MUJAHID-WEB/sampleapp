import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/onboarding/pages/onboarding_page.dart';

import 'login_screen.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 6);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      colors: [(Colors.white12), Colors.white24],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Center(
              child: Container(
                child: Image.asset(
                  "images/app_logo.png",
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Text(
              'Loading...',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Lottie.asset(
              'images/infinity-green.json',
              //repeat: false,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
            // AnimatedSplashScreen(
            //     splash: Lottie.asset('images/infinity-green.json'),
            //     splashIconSize: 250,
            //     backgroundColor: Colors.black,
            //     pageTransitionType: PageTransitionType.rightToLeftWithFade,
            //     nextScreen: LoginPage()),
            // CircularProgressIndicator(
            //   valueColor:
            //       AlwaysStoppedAnimation(Color.fromARGB(255, 33, 236, 243)),
            //   strokeWidth: 11.0,
            // ),
          ],
        ),
      ),
    );
  }
}
