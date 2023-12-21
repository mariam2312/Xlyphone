import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num = 1;
    void play(num) {
      Audio audio = Audio.load('tons/note$num.wav');
      audio.play();
    }

    Expanded lines(int numline, String det, Color colorline) {
      return Expanded(
        child: FloatingActionButton(
          onPressed: () {
            play(numline);
          },
          child: Text(det),
          backgroundColor: colorline,
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("XYLOPHONE"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            lines(1, 'do', Colors.red),
            lines(2, 're', Colors.orange),
            lines(3, 'mi', Colors.yellow),
            lines(4, 'fa', Colors.green),
            lines(5, 'so', Colors.teal),
            lines(6, 'la', Colors.blue),
            lines(7, 'se', Colors.purple),
          ],
        ),
      ),
    );
  }
}
