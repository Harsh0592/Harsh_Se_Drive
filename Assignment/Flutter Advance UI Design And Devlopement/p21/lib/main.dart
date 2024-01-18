/*21. Create an application like gmail and display Screens according to
user selection and design each page with dummy data */

import 'package:flutter/material.dart';
import 'package:p21/Screens/HomeScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home_Screen(),
    );
  }
}