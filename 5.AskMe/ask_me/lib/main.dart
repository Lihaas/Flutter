import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(AskMe());
}

class AskMe extends StatefulWidget {
  @override
  _AskMeState createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text("Ask Me"),
          titleSpacing: 5,
          centerTitle: true,
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      ballNo = Random().nextInt(5) + 1;
                      //  print(ballNo);
                    });
                  },
                  child: Image.asset("images/ball$ballNo.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
