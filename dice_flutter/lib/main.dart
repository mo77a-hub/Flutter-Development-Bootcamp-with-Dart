import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[300],
        appBar: AppBar(title: Text('Dicee'), backgroundColor: Colors.teal[700]),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left_dice_number = 1;
  int right_dice_number = 1;
  void RollDice() {
    setState(() {
      left_dice_number = Random().nextInt(6) + 1;
      right_dice_number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                RollDice();
              },
              child: Image.asset('images/dice$left_dice_number.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$right_dice_number.png'),
              onPressed: () {
                RollDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
