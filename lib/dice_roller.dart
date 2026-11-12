import 'dart:math';

import 'package:flutter/material.dart';

//This class is the static side of the page
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  //Create state helps to render the initial UI
  //It is only called when the screen is forst loaded
  //After this
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//underscore "_" means that the class is private
//State is the one that renders the UI "state"
//State is the dynamic part of UI
class _DiceRollerState extends State<DiceRoller> {
  //Random class helps to generate random numbers
  final randomizer = Random();
  var currentDiceNumber = 1; //Default dice number

  void rollDice() {
    //setState will call the build function everytime a b
    setState(() {
      // Since the number generator starts from 0-5, we add 1 to make it 1-6
      currentDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //image of the dice
        Image.asset('assets/dice-$currentDiceNumber.png', width: 200),
        TextButton(
          onPressed: rollDice,
          child: const Text(
            "Press Me",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
