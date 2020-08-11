import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is cool"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.redAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.yellowAccent,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.greenAccent,
                width: 100,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
