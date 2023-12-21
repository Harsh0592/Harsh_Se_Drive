import 'package:flutter/material.dart';
import 'package:myapp2/screens/CalculatorScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}