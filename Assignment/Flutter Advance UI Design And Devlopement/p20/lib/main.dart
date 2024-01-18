/*20.  Write a code to display edit, view, delete options with context menu
in listview and also perform respective operation on user's choice
*/ 

import 'package:flutter/material.dart';
import 'package:p20/Screens/List_VIew.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: List_View(),
    );
  }
}