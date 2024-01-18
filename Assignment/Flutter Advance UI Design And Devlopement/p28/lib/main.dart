/*28. Create an Application to take input two numbers from users and
when user press button then display sum of those values of next
Activity. */

import 'package:flutter/material.dart';
import 'package:p28/Screens/Sum_Calculator.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sum_Calculator(),
    );
  }
}