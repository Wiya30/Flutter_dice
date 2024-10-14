import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red[900],
        ),
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
  int numberOfDice = 1;
  int numberOfDice2 = 1;

  void changeDice() {
    numberOfDice = Random().nextInt(6) + 1;
    numberOfDice2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$numberOfDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeDice();
                });
              },
              child: Image.asset('images/dice$numberOfDice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
