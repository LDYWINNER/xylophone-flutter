import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.lightGreen, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.blue.shade900, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
