import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    // add it to your class as a static member
    ////static AudioCache player = AudioCache();
    // or as a local variable
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildPlay({Color buttonColor,int trackNumber}){
    return Expanded(
        child: FlatButton(
          color: buttonColor,
          onPressed: (){
            playSound(trackNumber);
          },
        )
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
            children: <Widget>[
              buildPlay(buttonColor: Colors.red,trackNumber: 1),
              buildPlay(buttonColor: Colors.orange,trackNumber: 2),
              buildPlay(buttonColor: Colors.yellow,trackNumber: 3),
              buildPlay(buttonColor: Colors.green,trackNumber: 4),
              buildPlay(buttonColor: Colors.teal,trackNumber: 5),
              buildPlay(buttonColor: Colors.blue,trackNumber: 6),
              buildPlay(buttonColor: Colors.purple,trackNumber: 7),
            ],
          ),
        ),

      ),
    );
  }
}
