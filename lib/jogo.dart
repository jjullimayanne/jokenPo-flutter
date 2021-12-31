import 'dart:ui';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.black)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text(
                "Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            GestureDetector(
              onTap: () {
                print("imagen clilcada");
              },
              onDoubleTap: () {
                print("Dois cliques");
              },
              child: Image.asset("images/padrao.png"),
              onLongPress: () {
                print("longo clique ");
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Escolha uma opção abaixo",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "images/padrao.png",
                  height: 100,
                ),
                Image.asset(
                  "images/padrao.png",
                  height: 100,
                ),
                Image.asset(
                  "images/padrao.png",
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
