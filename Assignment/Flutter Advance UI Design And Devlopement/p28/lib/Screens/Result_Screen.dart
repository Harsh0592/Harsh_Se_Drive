import 'package:flutter/material.dart';

class Result_Screen extends StatelessWidget {
  final double sum;
  Result_Screen({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Result'),
      ),
      body: Center(
        child: Text('Sum: $sum',style: TextStyle(fontSize: 20),),
      ),
    );
  }
}