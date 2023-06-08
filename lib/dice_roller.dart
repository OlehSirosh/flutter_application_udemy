import 'dart:math';
import 'package:flutter/material.dart';
final randomized = Random();
class DiceRoller extends StatefulWidget {
const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

  void rollDice() {
    setState((){
      currentDiceRoll = randomized.nextInt(6) + 1;
    });
  }
  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 250,
          ),
          Center(
            child: Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Press to change!'))
        ],
      );
  }

}