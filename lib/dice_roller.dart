import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  Random randomizer = Random();

  int num = 6;

  void rollDice() {
    setState(() {
      num = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$num.png',
          width: 200,
        ),
        const SizedBox(
          height: 32,
        ),
        ElevatedButton(
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
