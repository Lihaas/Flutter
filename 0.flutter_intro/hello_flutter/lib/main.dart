import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hellow flutter"),
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/q1.png"),
          ),
        ),
      ),
    ),
  );
}
