import 'package:flutter/material.dart';
import 'package:secoundapp/rolldice.dart';
import 'package:secoundapp/styled_text.dart';

var startallignment = Alignment.bottomCenter;
var endallignment = Alignment.topRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.color1, this.color2, {super.key});

  const GradiantContainer.greenish({super.key})
      : color1 = const Color.fromARGB(255, 10, 44, 49),
        color2 = const Color.fromARGB(255, 154, 183, 255);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startallignment,
          end: endallignment,
        ),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
