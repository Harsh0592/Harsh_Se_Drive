import 'package:flutter/material.dart';
import 'package:p26/Screens/Second_Screen.dart';

class first_screen extends StatefulWidget {
  const first_screen({super.key});

  @override
  State<first_screen> createState() => _first_screenState();
}

class _first_screenState extends State<first_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()), 
            );
          }, 
          child: Text('Go to Second Screen')),
      ),
    );
  }
}