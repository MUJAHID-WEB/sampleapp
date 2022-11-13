import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_animated_container.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/page/profile_page.dart';
import 'forgot_password_page.dart';
import 'package:get/get.dart';
import 'profile_page.dart';
import 'registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: const [
          BackDesign(),
          LoginCredentials(),
          BottomContainer(),
        ]),
      ),
    );
  }
}

class BackDesign extends StatelessWidget {
  const BackDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          color: Colors.white,
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 220,
                      height: 220,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 180,
                      height: 180,
                      borderRadius: 200,
                      depth: 50,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 140,
                      height: 140,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    // ClayContainer(
                    //   color: Colors.white,
                    //   width: 100,
                    //   height: 100,
                    //   borderRadius: 200,
                    //   depth: 50,
                    // ),
                    ClayAnimatedContainer(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                      borderRadius: 200,
                      depth: 50,
                      //spread: 50,
                      duration: Duration(seconds: 2),
                    )
                  ],
                ),
                right: 0,
                top: -size.height * 0.05,
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 160,
                      height: 160,
                      borderRadius: 200,
                      depth: 50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 140,
                      height: 140,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 70,
                      height: 70,
                      borderRadius: 200,
                      depth: 50,
                    ),
                  ],
                ),
                left: -size.width * 0.05,
                bottom: size.height * 0.1,
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: Stack(
            children: [
              Positioned(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClayContainer(
                      color: Colors.white,
                      width: 100,
                      height: 100,
                      borderRadius: 200,
                      depth: 50,
                      curveType: CurveType.convex,
                    ),
                    ClayContainer(
                      color: Colors.white,
                      width: 80,
                      height: 80,
                      borderRadius: 200,
                      depth: -50,
                      curveType: CurveType.convex,
                    )
                  ],
                ),
                left: size.width * 0.52,
                bottom: 10,
              )
            ],
          ),
        )
      ],
    );
  }
}

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.3,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              'Signin into your account',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Container(
                child: ClayContainer(
                  color: Colors.white,
                  borderRadius: 30,
                  depth: -30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                          fillColor: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: ClayContainer(
                color: Colors.white,
                borderRadius: 30,
                depth: -30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        fillColor: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClayContainer(
        color: Colors.white,
        height: size.height * 0.3,
        depth: 60,
        spread: 20,
        customBorderRadius: const BorderRadius.only(
          topRight: Radius.elliptical(350, 250),
          topLeft: Radius.elliptical(350, 250),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            ClayContainer(
              color: Colors.white,
              depth: 20,
              borderRadius: 30,
              curveType: CurveType.convex,
              child: GestureDetector(
                // onTap: () {
                //   Navigator.pushReplacement(context,
                //       MaterialPageRoute(builder: (context) => ProfilePage()));
                // },
                onTap: () {
                  Get.to(() => ProfilePage(),
                      transition: Transition.rightToLeftWithFade,
                      duration: const Duration(milliseconds: 900));
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 30.0 / 2, horizontal: 30.0 * 2),
                  child: Text(
                    'LogIn',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              //child: Text('Don\'t have an account? Create'),
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Don\'t have an account? "),
                  TextSpan(
                    text: 'Create',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => RegistrationPage(),
                            transition: Transition.upToDown,
                            duration: const Duration(milliseconds: 1200));
                      },
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
