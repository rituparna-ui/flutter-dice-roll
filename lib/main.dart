import 'package:flutter/material.dart';

import 'dice_roller.dart';
import 'gradient_container.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: GradientContainer(
          child: DiceRoller(),
        ),
      ),
    );
  }
}
