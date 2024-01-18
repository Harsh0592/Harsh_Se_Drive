//Call via urllauncher, Send Sms via urllauncher

import 'package:flutter/material.dart';
import 'package:p29/Screens/Url_Launcher.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Url_Launcher(),
    );
  }
}