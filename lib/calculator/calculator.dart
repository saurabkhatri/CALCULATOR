

import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String expression = "";
  double result = 0;

  void add() {
    if (expression.isEmpty) {
      setState(() {
        result = 0;
      });
      return;
    }
    try {
      result += double.parse(expression);
      expression = "";
      setState(() {});
    } catch (e) {
      expression = "";
      setState(() {
        result = double.nan;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Addition Calculator'),
        ),
        body: Column(
          children: [
            Text(
              expression,
              style: TextStyle(fontSize: 24),
            ),
            Divider(),
            Text(
              result.toString(),
              style: TextStyle(fontSize: 32),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}
