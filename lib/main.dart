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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image(
          width: 150,
          height: 150,
          image: AssetImage('images/dice1.png'),
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          width: 150,
          height: 150,
          image: AssetImage('images/dice2.png'),
        )
      ],
    );
  }
}
