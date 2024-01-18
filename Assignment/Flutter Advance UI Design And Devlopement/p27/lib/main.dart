import 'package:flutter/material.dart';
import 'package:p27/Screens/Toast.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAlertDialog(),
    );
  }
}