import 'package:flutter/material.dart';
import 'package:p14/Screens/MyApp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Alert_Dialog(),
        ),
      ),
    );
       
  }
}
