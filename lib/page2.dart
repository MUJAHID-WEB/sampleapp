
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/page1.dart';

class Challenge03 extends StatefulWidget {
  const Challenge03({super.key});

  @override
  State<Challenge03> createState() => _Challenge03State();
}

class _Challenge03State extends State<Challenge03> {
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) =>
  //         const Challenge04(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       const begin = Offset(1.0, 0.0);
  //       const end = Offset.zero;
  //       const curve = Curves.linear;

  //       var tween =
  //           Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  //       return SlideTransition(
  //         position: animation.drive(tween),
  //         child: child,
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Challenge03',
          ),
          actions: [
            IconButton(
              // onPressed: () => Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const Challenge04(),
              //   ),
              // ),
              // onPressed: () {
              //   Navigator.of(context).push(_createRoute());
              // },
              onPressed: () {
                Get.to(() => const Challenge02_01(),
                    transition: Transition.circularReveal,
                    duration: Duration(seconds: 2));
              },
              icon: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          //BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        ]),
        body: Column(
          children: [
            //greetings Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Jaref!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '23 Jan, 201',
                              style: TextStyle(
                                color: Colors.blue[100],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Search Bar
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )),
                  //How do you feel
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you fee?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // 04 deferent faces
                  Row(
                    children: [
                      Column(
                        children: [
                          Emoji(emoji: ' 😟 '),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Emoji(emoji: '  😊  '),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Emoji(emoji: '  😃  '),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Emoji(emoji: '  😁  '),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //Exercise
            Expanded(
              child: Container(
                color: Colors.grey[100],
                // decoration: BoxDecoration(

                //     borderRadius: BorderRadius.circular(35)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        //exercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.more_horiz,
                            ),
                          ],
                        ),
                        //exercise listview
                        SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              ExcerciseTile(
                                icon: Icons.favorite,
                                exerciseName: 'Speaking Skills',
                                numberOfExercise: 16,
                                color: Colors.orange,
                              ),
                              ExcerciseTile(
                                icon: Icons.person,
                                exerciseName: 'Reading Speed',
                                numberOfExercise: 5,
                                color: Colors.blue,
                              ),
                              ExcerciseTile(
                                icon: Icons.star,
                                exerciseName: 'Writting Skills',
                                numberOfExercise: 20,
                                color: Colors.red,
                              ),
                              ExcerciseTile(
                                icon: Icons.star,
                                exerciseName: 'listening Skills',
                                numberOfExercise: 20,
                                color: Colors.pink,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// for Challenge 03
class Emoji extends StatelessWidget {
  final String emoji;
  const Emoji({
    Key? key,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(12),
      child: Text(
        emoji,
        style: TextStyle(
          fontSize: 25,
        ),
      ),
    );
  }
}


class ExcerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercise;
  final color;
  const ExcerciseTile({
    Key? key,
    required this.color,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercise,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(16),
                      color: color,
                      //color: Colors.orange,
                      child: Icon(
                        icon,
                        //Icons.favorite,
                        color: Colors.white,
                      )),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exerciseName,
                      //'Speaking Skills',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      numberOfExercise.toString() + ' Exercises',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_horiz,
            ),
          ],
        ),
      ),
    );
  }
}

