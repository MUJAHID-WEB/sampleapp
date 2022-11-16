import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:portfolio/themes.dart';
import 'package:portfolio/utils/user_preferences.dart';

AppBar buildAppBar(BuildContext context) {
  final user = UserPreferences.getUser();
  final isDarkMode = user.isDarkMode;
  final icon = isDarkMode ? CupertinoIcons.sun_max : CupertinoIcons.moon_stars;

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      // IconButton(
      //   icon: Icon(Icons.swipe_right),

      //   onPressed: () {
      //     Get.to(() => const Challenge02_01(),
      //         transition: Transition.circularReveal,
      //         duration: Duration(seconds: 2));
      //   },
      // ),
      ThemeSwitcher(
        builder: (context) => IconButton(
          icon: Icon(icon),
          onPressed: () {
            final theme = isDarkMode ? MyThemes.lightTheme : MyThemes.darkTheme;

            final switcher = ThemeSwitcher.of(context)!;
            switcher.changeTheme(theme: theme);

            final newUser = user.copy(isDarkMode: !isDarkMode);
            UserPreferences.setUser(newUser);
          },
        ),
      ),
    ],
  );
}
