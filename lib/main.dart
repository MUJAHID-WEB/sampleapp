import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/map/home_screen.dart';
import 'package:portfolio/splash_screen.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:portfolio/themes.dart';
import 'package:portfolio/utils/user_preferences.dart';
import 'package:get/get.dart';

import 'zoomdrawer/drawer_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserPreferences.init();

  runApp(MyApp());
}
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  static final String title = 'User Profile';

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          //theme: ThemeProvider.of(context),
          title: MyApp.title,
          //home: SplashScreen(),
          home: HomeScreen(),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SplashScreen(),
//     );
//   }
// }
