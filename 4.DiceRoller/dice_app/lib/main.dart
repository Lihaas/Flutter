import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 3;
  int rightDice = 2;
  void changeState() {
    rightDice = Random().nextInt(5) + 1;
    leftDice = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("Dice Roller"),
          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          changeState();
                        });
                      },
                      child: Image.asset("images/dice$leftDice.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          changeState();
                        });
                      },
                      child: Image.asset("images/dice$rightDice.png"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
