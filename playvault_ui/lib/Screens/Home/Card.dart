// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:playvault_ui/Screens/Home/Home.dart';

class Cards extends StatefulWidget {
  const Cards({
    super.key,
  });

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.15,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.09),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 38, 37, 37),
          borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width * 0.05))),
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          margin:
              const EdgeInsets.only(left: 15, top: 15, right: 20, bottom: 10),
          child: Row(children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              child: const Image(
                image: AssetImage("assets/Mastercard.png"),
              ),
            ),
            const Text(
              "* * * *   7 4 3 9",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 147, 144, 144)),
            ),
            const Spacer(),
            const Text(
              "05/26",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 147, 144, 144)),
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 20, bottom: 5),
          alignment: Alignment.topLeft,
          child: const Text(
            "Balance:",
            style: TextStyle(
                fontSize: 15, color: Color.fromARGB(255, 147, 144, 144)),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(left: 15, right: 20, bottom: 5),
          child: Text(
            "${String.fromCharCodes(Runes('\u0024'))} ${Home.balance}",
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
        )
      ]),
    );
  }
}
