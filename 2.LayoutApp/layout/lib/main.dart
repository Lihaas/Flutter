import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("This is cool"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.redAccent,
                width: 100,
                height: double.infinity,
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.cyanAccent,
                        width: 100,
                        height: 100,
                      ),
                      Container(
                        color: Colors.redAccent,
                        width: 100,
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.cyanAccent,
                width: 100,
                height: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
