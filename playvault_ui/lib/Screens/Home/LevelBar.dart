import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LevelBar extends StatelessWidget {
  const LevelBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.09,
      decoration: const BoxDecoration(
          color: Color.fromARGB(105, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.03,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: <Widget>[
          const Row(
            children: [
              Text(
                "Level ",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                "1 ",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          StepProgressIndicator(
            totalSteps: 100,
            currentStep: 32,
            size: 8,
            padding: 0,
            // selectedColor: Color.fromARGB(255, 255, 69, 59),
            // unselectedColor: Colors.cyan,
            roundedEdges: const Radius.circular(10),
            selectedGradientColor: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color.fromARGB(255, 38, 80, 197), Colors.deepOrange],
            ),
            unselectedGradientColor: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
