//18.  Write a code to select Date on button's click event

import 'package:flutter/material.dart';
import 'package:p18/Screens/Select_Date.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Select_date(),
    );
  }
}