import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        body: Calculator(),
      ),
    );
  }
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Text(
              '0',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CalculatorButton(text: '7'),
                CalculatorButton(text: '8'),
                CalculatorButton(text: '9'),
                CalculatorButton(text: '/', backgroundColor: Colors.green),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '4'),
                CalculatorButton(text: '5'),
                CalculatorButton(text: '6'),
                CalculatorButton(text: 'x', backgroundColor: Colors.green),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: '1'),
                CalculatorButton(text: '2'),
                CalculatorButton(text: '3'),
                CalculatorButton(text: '-', backgroundColor: Colors.green),
              ],
            ),
            Row(
              children: <Widget>[
                CalculatorButton(text: 'C', backgroundColor: Colors.red),
                CalculatorButton(text: '0'),
                CalculatorButton(text: '=', backgroundColor: Colors.blue),
                CalculatorButton(text: '+', backgroundColor: Colors.orange),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  CalculatorButton({required this.text, this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            elevation: 8,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
