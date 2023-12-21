import 'package:flutter/material.dart';
import 'package:myapp7/screens/ColorSelectionScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorSelectionScreen(),

    );
  }
}