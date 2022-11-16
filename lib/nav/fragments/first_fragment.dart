import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/nav/fragments/second_fragment.dart';

class Challenge02_01 extends StatefulWidget {
  const Challenge02_01({super.key});

  @override
  State<Challenge02_01> createState() => _Challenge02_01State();
}

class _Challenge02_01State extends State<Challenge02_01> {
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) =>
  //         const Challenge03(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(0.0, 1.0);
  //       const end = Offset.zero;
  //       final tween = Tween(begin: begin, end: end);
  //       final offsetAnimation = animation.drive(tween);
  //       return child;
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenge02',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const Challenge03(),
                  transition: Transition.rightToLeft,
                  duration: Duration(seconds: 2));
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(0, 196, 192, 1),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'My Task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 65,
            ),
            const Text(
              'You have 3 task today',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Walk',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 70,
                          ),
                          const Text(
                            'Walk for 30 minutes in a new rural area',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 30,
                          ),
                          const Text(
                            'if you are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first al area then at first are not in arulal area then at first are not in arulal area then at first',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '3 Comments',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.greenAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Walk',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 70,
                          ),
                          const Text(
                            'Walk for 30 minutes in a new rural area',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 30,
                          ),
                          const Text(
                            'if you are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first al area then at first are not in arulal area then at first are not in arulal area then at first',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '3 Comments',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.greenAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Walk',
                            style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 70,
                          ),
                          const Text(
                            'Walk for 30 minutes in a new rural area',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 30,
                          ),
                          const Text(
                            'if you are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first are not in arulal area then at first al area then at first are not in arulal area then at first are not in arulal area then at first',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '3 Comments',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.greenAccent,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Center(
                child: FloatingActionButton(
              backgroundColor: Colors.white,
              elevation: 10,
              onPressed: () {},
              child: const Icon(
                Icons.add,
                size: 40,
                color: Colors.blue,
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
