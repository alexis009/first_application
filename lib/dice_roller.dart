import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceroll1 = 2;
  var currentDiceroll2 = 1;
  int rollValue = 3;
  void rollDice() {
    setState(() {
      currentDiceroll1 = randomizer.nextInt(6) + 1;
      currentDiceroll2 = randomizer.nextInt(6) + 1;
      rollValue = currentDiceroll1 + currentDiceroll2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15),
            ),
            Image.asset(
              'assets/images/dice-$currentDiceroll1.png',
              width: 200,
            ),
            Image.asset(
              'assets/images/dice-$currentDiceroll2.png',
              width: 200,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Roll value is:$rollValue',
          style: const TextStyle(color: Colors.white),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
