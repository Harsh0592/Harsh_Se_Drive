/*24.  create a Phone call App when user first time open the app it will
automatically generate one dialog which has two option allow, deny if
click on allow permission is grant in settings*/

import 'package:flutter/material.dart';
import 'package:p24/Screens/Phone_Call.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Phone_Call_App()
    );
  }
}