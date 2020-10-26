import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
// import 'package:flutter/services.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note$soundNumber.wav");
  }

  Expanded buildKey({Color colorName, int soundNum}) {
    return Expanded(
      // takes entire screen height
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(soundNum);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, //takes entire width
              children: [
                buildKey(colorName: Colors.red, soundNum: 1),
                buildKey(colorName: Colors.orange, soundNum: 2),
                buildKey(colorName: Colors.yellow, soundNum: 3),
                buildKey(colorName: Colors.green, soundNum: 4),
                buildKey(colorName: Colors.teal, soundNum: 5),
                buildKey(colorName: Colors.blue, soundNum: 6),
                buildKey(colorName: Colors.purple, soundNum: 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
