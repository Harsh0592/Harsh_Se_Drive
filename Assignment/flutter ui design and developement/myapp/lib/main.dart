import 'package:flutter/material.dart';
import 'package:myapp/screens/Home_Page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}