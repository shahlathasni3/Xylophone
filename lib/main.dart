import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void playMusic(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.mp3'));
}

Expanded BuildWidget(backgroundColor, soundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: () {
        playMusic(soundNumber);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildWidget(Colors.red, 1),
                BuildWidget(Colors.orange, 2),
                BuildWidget(Colors.yellow, 3),
                BuildWidget(Colors.green[400], 4),
                BuildWidget(Colors.green, 5),
                BuildWidget(Colors.blue, 6),
                BuildWidget(Colors.purpleAccent, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
