/*15.  Write a code to display alert dialog with positive, negative and
neutral button and display toast respectively user's choice*/ 

import 'package:flutter/material.dart';
import 'package:p15/Screens/MyButton.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Dialog Box'),
        ),
        body: Center(
          child: MyButton(),
        ),
      ),
    );
  }
}

