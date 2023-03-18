import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Davulcu());
}

final oynatici = AudioPlayer();

class Davulcu extends StatelessWidget {
  const Davulcu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MehmetEmin(),
        backgroundColor: Colors.black,
      ),
    );
  }
}

class MehmetEmin extends StatelessWidget {
  const MehmetEmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Davulparca("bongo", Colors.blueAccent),
                ),
                Expanded(
                  child: Davulparca("clap1", Colors.redAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Davulparca("bip", Colors.yellowAccent),
                ),
                Expanded(
                  child: Davulparca("clap3", Colors.greenAccent),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Davulparca("clap2", Colors.deepOrange),
                ),
                Expanded(
                  child: Davulparca("how", Colors.brown),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Davulparca("crash", Colors.purpleAccent),
                ),
                Expanded(
                  child: Davulparca("ridebel", Colors.pinkAccent),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextButton Davulparca(String ses, Color renk) {
    return TextButton(
      onPressed: () async {
        sesical(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}

void sesical(String ses) {
  oynatici.play(AssetSource('$ses.wav'));
}
