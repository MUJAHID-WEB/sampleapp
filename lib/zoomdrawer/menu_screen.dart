import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text('Menu Screen'),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;
  MenuItem(this.icon, this.title);
}

final List<MenuItem> options = [
  MenuItem(Icons.payment, 'Payments'),
  MenuItem(Icons.favorite, 'Discounts'),
  MenuItem(Icons.notifications, 'Notification'),
  MenuItem(Icons.format_list_bulleted, 'Orders'),
  MenuItem(Icons.help, 'Help'),
];
