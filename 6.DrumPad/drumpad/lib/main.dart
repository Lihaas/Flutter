import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(DrumPad());
}

class DrumPad extends StatefulWidget {
  @override
  _DrumPadState createState() => _DrumPadState();
}

void soundPlay(int i) {
  AudioCache player = AudioCache();
  player = AudioCache();
  player.play('note$i.wav');
}

Expanded KeyBuild(int buttonnumber, Color color) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        soundPlay(buttonnumber);
      },
      color: color,
    ),
  );
}

class _DrumPadState extends State<DrumPad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("DrumPad"),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
          elevation: 50,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              KeyBuild(
                1,
                Colors.orange,
              ),
              KeyBuild(
                2,
                Colors.blue,
              ),
              KeyBuild(
                3,
                Colors.lightBlue,
              ),
              KeyBuild(
                4,
                Colors.indigo,
              ),
              KeyBuild(
                5,
                Colors.red,
              ),
              KeyBuild(
                6,
                Colors.redAccent,
              ),
              KeyBuild(
                7,
                Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
