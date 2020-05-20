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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var diceLeft = 1;
    var diceRight = 1;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left Button Pressed');
              },
              child: Image.asset('images/dice$diceLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Button Pressed');
              },
              child: Image.asset('images/dice$diceRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
