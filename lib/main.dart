import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int audioDigit)
  {
    final player = AudioCache();
  player.play('note$audioDigit.wav');}

  Expanded buildKey({Color color , int audioDigit}){
    return Expanded(
    child: FlatButton(
      child: ListTile(leading: Icon(Icons.play_circle_outline),title: Text('Tune$audioDigit'),),
      color: color ,
      onPressed: ()
      {
        playSound(audioDigit);
        },
    )
      ,);
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My  Xylophone Tune  App'),),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.amber, audioDigit: 1),
              buildKey(color: Colors.teal, audioDigit: 2),
              buildKey(color: Colors.pink, audioDigit: 3),
              buildKey(color: Colors.cyan, audioDigit: 4),
              buildKey(color: Colors.orange, audioDigit: 5),
              buildKey(color: Colors.red, audioDigit: 6),
              buildKey(color: Colors.yellow, audioDigit: 7),
              buildKey(color: Colors.green, audioDigit: 1),
              buildKey(color: Colors.blue, audioDigit: 1),
              buildKey(color: Colors.indigo, audioDigit: 1),
              buildKey(color: Colors.purple, audioDigit: 1),

            ],
          ),
        ),
      ),
    );
  }
}
