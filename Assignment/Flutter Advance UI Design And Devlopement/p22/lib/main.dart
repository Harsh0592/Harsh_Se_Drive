/*22.  Create an application with bottom navigation with 3 tabs Gallery,
audio and video and design each page with dummy data */

import 'package:flutter/material.dart';
import 'package:p22/Screens/Bottom_navigation.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'media app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Bottom_navigation(),
    );
  }
}