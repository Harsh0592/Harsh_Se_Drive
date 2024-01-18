/*17..  open alert dialog when user want to exit from the application
 */

import 'package:flutter/material.dart';
import 'package:p17/Screens/MyHomePage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}