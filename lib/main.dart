import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade100,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumberDice = 1;
  int rightNumberDice = 2;

  void threwTheDice(){
    setState(() {
      leftNumberDice = Random().nextInt(6) + 1;
      rightNumberDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  threwTheDice();
                },
                child: Image.asset('images/dice$leftNumberDice.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  threwTheDice();
                },
                child: Image.asset('images/dice$rightNumberDice.png')),
          ),
        ],
      ),
    );
  }
}


