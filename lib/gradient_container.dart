import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget? child;
  const GradientContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 9, 25, 114),
            Color.fromARGB(255, 88, 27, 194),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
