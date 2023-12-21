import 'package:flutter/material.dart';
import 'package:myapp9/screens/LoginPage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login And Register',
      home: AuthScreen(),
    );
  }
}