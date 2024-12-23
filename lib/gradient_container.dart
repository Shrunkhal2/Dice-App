import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.colors1, this.colors2, {super.key});
  final Color colors1;
  final Color colors2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors1, colors2],
          begin: startAllignment,
          end: endAllignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
