/*4. Create an application with radio buttons (Add, Substraction,
Multiply, Division) EditText(number1, number2) and print result as
per user choice from radio button in TextView */

import 'package:flutter/material.dart';
class CalculatorScreen extends StatefulWidget {

  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  TextEditingController _number1Controller = TextEditingController();
  TextEditingController _number2Controller = TextEditingController();
  String _result = '';
  String _selectedOperation = 'Addition';

  void _calculateResult() {
    double number1 = double.tryParse(_number1Controller.text) ?? 0.0;
    double number2 = double.tryParse(_number2Controller.text) ?? 0.0;
    double result = 0.0;

    switch (_selectedOperation) {
      case 'Addition':
        result = number1 + number2;
        break;
      case 'Subtraction':
        result = number1 - number2;
        break;
      case 'Multiplication':
        result = number1 * number2;
        break;
      case 'Division':
        if (number2 != 0) {
          result = number1 / number2;
        } else {
          _result = 'Cannot divide by zero';
          return;
        }
        break;
    }

    setState(() {
      _result = 'Result: $result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _number1Controller,
              decoration: InputDecoration(labelText: "Enter number 1"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _number2Controller,
              decoration: InputDecoration(labelText: "Enter number 2"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Radio(
                  value: 'Addition',
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Addition'),
                Radio(
                  value: 'Subtraction',
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Subtraction'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                  value: 'Multiplication',
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Multiplication'),
                Radio(
                  value: 'Division',
                  groupValue: _selectedOperation,
                  onChanged: (value) {
                    setState(() {
                      _selectedOperation = value.toString();
                    });
                  },
                ),
                Text('Division'),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _calculateResult();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 16.0),
            Text(
              _result,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
