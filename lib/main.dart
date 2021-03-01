import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildFlatButton(numero: 1, color: Colors.red),
              buildFlatButton(numero: 2, color: Colors.orange),
              buildFlatButton(numero: 3, color: Colors.yellow),
              buildFlatButton(numero: 4, color: Colors.green),
              buildFlatButton(numero: 5, color: Colors.blue),
              buildFlatButton(numero: 6, color: Colors.indigo),
              buildFlatButton(numero: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFlatButton({int numero, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(numero);
        },
        child: null,
      ),
    );
  }

  void playSound(int numero) {
    AudioCache player = AudioCache();
    player.play('note$numero.wav');
  }
}
