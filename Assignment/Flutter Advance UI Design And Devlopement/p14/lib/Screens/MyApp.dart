import 'package:flutter/material.dart';
import 'package:p14/main.dart';

class Alert_Dialog extends StatefulWidget {
  const Alert_Dialog({super.key});

  @override
  State<Alert_Dialog> createState() => _Alert_DialogState();
}

class _Alert_DialogState extends State<Alert_Dialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Alert_box(),
          ),
        ),
      ),
    );
  }
}

class Alert_box extends StatelessWidget {
  const Alert_box({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () =>showDialog(context: context, 
    builder: (BuildContext context) => 
    AlertDialog(
      title: Text("Are you sure"),
      content: Text("Do you want to do this ?"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext content)=>MyApp()));
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully deleted")));
        }, 
        child: Text("Yes"),),
        TextButton(onPressed: (){}, child: Text("No")),
      ],
    ),
    ),child: Text("Yes"),
    );
  }
}