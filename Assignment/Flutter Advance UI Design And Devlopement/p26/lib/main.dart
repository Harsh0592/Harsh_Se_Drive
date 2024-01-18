//26.  Write a code to redirect user from one activity to another when button click.

import 'package:flutter/material.dart';
import 'package:p26/Screens/FirstScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: first_screen(),
    );
  }
}