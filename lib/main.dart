import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded soundPlayer(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play("note$number.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                soundPlayer(Colors.red, 1),
                soundPlayer(Colors.orange, 2),
                soundPlayer(Colors.yellow, 3),
                soundPlayer(Colors.green, 4),
                soundPlayer(Colors.teal, 5),
                soundPlayer(Colors.blue, 6),
                soundPlayer(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
