import 'package:flutter/material.dart';
import 'package:playvault_ui/Screens/Home/Card.dart';
import 'package:playvault_ui/Screens/Home/HomeBottom.dart';
import 'package:playvault_ui/Screens/Home/HomeTop.dart';
import 'package:playvault_ui/Screens/Home/LevelBar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static double balance = 0;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: <Widget>[HomeTop(), HomeBottom()]),
      ),
    );
  }
}
