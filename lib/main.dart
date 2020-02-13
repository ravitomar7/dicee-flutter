import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    DicePage(),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDice, rDice;

  void fun() {
    lDice = Random().nextInt(6) + 1;
    rDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$lDice.png'),
                    onPressed: () {
                      setState(() {
                        fun();
                      });
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$rDice.png'),
                    onPressed: () {
                      setState(() {
                        fun();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
