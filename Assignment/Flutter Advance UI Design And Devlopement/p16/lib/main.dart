/*p16.  Write a code to display alert dialog with list of cities and Single
choice selection display selected city in TextView */

import 'package:flutter/material.dart';
import 'package:p16/Screens/CitySelectionWidget.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('City Selection Example'),
        ),
        body: Center(
          child: CitySelectionWidget(),
        ),
      ),
    );
  }
}