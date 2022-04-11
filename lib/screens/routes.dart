import 'package:delivery_app_final/screens/CartScreen.dart';
import 'package:delivery_app_final/screens/HomeScreen.dart';
import 'package:delivery_app_final/screens/LocationScreen.dart';
import 'package:delivery_app_final/screens/SettingsScreen.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      HomeScreen(),
      LocationScreen(),
      CartScreen(),
      SettingsScreen(),
    ];
    return myList[index];
  }
}
