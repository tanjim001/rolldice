import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return Dicerollerstate();
  }
}

class Dicerollerstate extends State<DiceRoll> 
{
  var diceroll = 1;

  void rolldice() {
    setState(() {
      diceroll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/img/dice-$diceroll.png', width: 200),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 28),
              foregroundColor: const Color.fromARGB(255, 250, 245, 245),
              padding: const EdgeInsets.only(top: 20, bottom: 20)),
          child: const Text('Roll dice'),
        ),
      ],
    );
  }
}
