import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded result({color , soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          result(color: Colors.deepPurple, soundNumber: 1),
                          result(color: Colors.red, soundNumber: 2),
                          result(color: Colors.black, soundNumber: 3),
                          result(color: Colors.blue, soundNumber: 4),
                          result(color: Colors.green, soundNumber: 5),
                          result(color: Colors.grey, soundNumber: 6),
                          result(color: Colors.teal, soundNumber: 7),
                        ],
    ),
    )),
    ),
    );
  }
}
