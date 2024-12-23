import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
var activeDiceImage = "assets/Images/dice-1.png";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void Rolldice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/Images/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
          onPressed: Rolldice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              padding: const EdgeInsets.only(top: 50)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
