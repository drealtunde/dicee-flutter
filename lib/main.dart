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
  int leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
//    leftDiceNumber = 4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  leftDiceNumber = 2;
                  print("Dice $leftDiceNumber rolled");
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice2.png'),
              onPressed: () {
                print("Dice 2 rolled");
              },
            ),
          )
        ],
      ),
    );
  }
}
