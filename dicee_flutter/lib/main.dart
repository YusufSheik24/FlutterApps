import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: Text('Decee App',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
      ),
      body: DicePage(),
    )),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void diceImage(){
    leftImage = Random().nextInt(6) + 1 ;

  }
  int leftImage = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
              onPressed: (){
                setState(() {
                  diceImage();
                });
              },
              child: Image.asset('images/dice$leftImage.png'))),


        ],
      ),
    );
  }
}
