import 'package:portfolio/login_screen.dart';
import 'package:portfolio/onboarding/pages/iintroduction_screen.dart';
import 'package:portfolio/onboarding/widget/card_planet.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Welcome to my Mobile App",
      subtitle: "I am Mujahidul Islam, a Mobile App Developer, using Flutter",
      image: const AssetImage(
        "images/mujahid.png",
      ),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      //background: Lottie.asset("images/animation/bg-1.json"),
    ),
    CardPlanetData(
      title: "imagine",
      subtitle: "An endless number of galaxies means endless possibilities.",
      image: const AssetImage("images/delivery.png"),

      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      //background: Lottie.asset("images/animation/bg-2.json"),
    ),
    // CardPlanetData(
    //   title: "stargaze",
    //   subtitle: "The sky dome is a beautiful graveyard of stars.",
    //   image: const AssetImage("images/img-3.png"),
    //   backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
    //   titleColor: Colors.yellow,
    //   subtitleColor: Colors.white,
    //   //background: Lottie.asset("images/animation/bg-3.json"),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

          //     ConcentricPageView(
          //   colors: <Color>[Colors.white, Colors.blue, Colors.red],
          //   // itemCount: 1, // null = infinity
          //   physics: NeverScrollableScrollPhysics(),
          //   itemBuilder: (index) {
          //     return Center(
          //       child: Container(
          //         child: Text('Page $index'),
          //       ),
          //     );
          //   },
          // )

          ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (index) {
          return CardPlanet(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => IntroScreen()),
          );
        },
      ),
    );
  }
}
