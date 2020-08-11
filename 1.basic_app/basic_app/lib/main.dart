import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("I am Programmer"),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/s1.png"),
          height: 200,
          width: 200,
        ),
      ),
    ),
  ));
}
