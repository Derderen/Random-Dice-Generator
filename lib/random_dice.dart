import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 172, 166),
        appBar: AppBar(
          title: Text('Random Dice Generator'),
          backgroundColor: Color.fromARGB(255, 255, 172, 166),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftSideDice = 1;
  int rightSideDice = 6;
  void changeDiceFace() {
    setState(() {
      leftSideDice = Random().nextInt(6) + 1;
      rightSideDice = Random().nextInt(6) + 1;
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
                changeDiceFace();
              },
              child: Image.asset('assets/dice$leftSideDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceFace();
              },
              child: Image.asset('assets/dice$rightSideDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
