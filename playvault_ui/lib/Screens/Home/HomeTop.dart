import 'package:flutter/material.dart';
import 'package:playvault_ui/Screens/Home/Card.dart';
import 'package:playvault_ui/Screens/Home/LevelBar.dart';

class HomeTop extends StatefulWidget {
  const HomeTop({
    super.key,
  });

  @override
  State<HomeTop> createState() => _HomeTopState();
}

class _HomeTopState extends State<HomeTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.40,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff8f6ad0), Color(0xff0286c2)],
            stops: [0, 1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width * 0.05))),
      child: Center(
        child: Column(children: <Widget>[const Cards(), LevelBar()]),
      ),
    );
  }
}
