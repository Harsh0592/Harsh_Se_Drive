//19.  Write a code to display profile and logout option in options menu

import 'package:flutter/material.dart';
import 'package:p19/Screens/OptionMenu.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Option_Menu(),
    );
  }
}