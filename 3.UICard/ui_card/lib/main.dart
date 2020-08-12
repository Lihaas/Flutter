import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/mypic.JPG"),
                ),
                Text(
                  'Sky Walker',
                  style: TextStyle(
                    fontFamily: 'Satisfy',
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
                Text(
                  'Developer of Own',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.orange,
                    ),
                    title: Text(
                      '+91 9999999999',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.orange,
                    ),
                    title: Text(
                      "vermasahilcf5@gmail.com",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
