/*2. Create an application to take input number from user and print its
reverse number in TextField*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home_Page extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _Home_PageState();
  }
}

class _Home_PageState extends State<Home_Page> {
  TextEditingController _numberController = TextEditingController();
  String _reversedNumber = '';
  void _reverseNumber() {
    String inputNumber = _numberController.text;
    // ignore: unused_local_variable
    String _reverseNumber = '';
    for (int i = inputNumber.length - 1; i >=0; i--){
      _reversedNumber += inputNumber[i];
    }
    setState(() {
      _reversedNumber = _reversedNumber;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _numberController,
              decoration: InputDecoration(labelText: "Enter your number"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _reverseNumber();
              },
              child: Text('Reverse'),

            ),
            SizedBox(height: 16.0),
            TextField(
              readOnly: true,
              controller: TextEditingController(text: _reversedNumber),
              decoration: InputDecoration(labelText: 'Reversed number'),
            ),
          ],
        ),
      ),
    );
  }
}