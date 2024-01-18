/*23.  Create an application with Navigation Drawer with 3 tabs Gallery,
audio and video and design each page with dummy data */

import 'package:flutter/material.dart';
import 'package:p23/Screens/HomeScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Media App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}