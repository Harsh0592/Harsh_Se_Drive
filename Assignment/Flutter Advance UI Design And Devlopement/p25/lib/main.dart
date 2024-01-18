//25.  Write a code to display Splash Screen using Activity

import 'package:flutter/material.dart';
import 'package:p25/Screens/Splash_Screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Splash_Screen(),
    );
  }
}