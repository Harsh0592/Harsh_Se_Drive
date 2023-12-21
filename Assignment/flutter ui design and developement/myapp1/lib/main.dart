import 'package:flutter/material.dart';
import 'package:myapp1/screens/InputNumberScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputNumberScren(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}