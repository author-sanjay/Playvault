import 'package:flutter/material.dart';
import 'package:playvault_ui/Screens/Home/Home.dart';

class HomeBottom extends StatefulWidget {
  const HomeBottom({
    super.key,
  });

  @override
  State<HomeBottom> createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Home.balance = Home.balance + 1,
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        // height: MediaQuery.of(context).size.height * 0.6,
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Image(
              image: AssetImage("assets/press-button.png"),
            ),
          ),
          Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Column(children: [
              Text("Tap Here to Earn Money"),
              Text("This Feature Disables after level 5.")
            ]),
          )
        ]),
      ),
    );
  }
}
