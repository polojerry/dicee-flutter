import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int diceLeft = 1;
  int diceRight = 1;

  void random() {
    setState(() {
      diceLeft = Random().nextInt(6) + 1;
      diceRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                random();
              },
              child: Image.asset('images/dice$diceLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                random();
              },
              child: Image.asset('images/dice$diceRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
