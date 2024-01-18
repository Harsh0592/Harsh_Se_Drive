import 'package:flutter/material.dart';
import 'package:p28/Screens/Result_Screen.dart';

class Sum_Calculator extends StatefulWidget {
  const Sum_Calculator({super.key});

  @override
  State<Sum_Calculator> createState() => _Sum_CalculatorState();
}

class _Sum_CalculatorState extends State<Sum_Calculator> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              _navigateToResultScreen(context);
            }, 
            child: Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
  void _navigateToResultScreen(BuildContext context){
    double num1 = double.tryParse(num1Controller.text) ?? 0.0;
    double num2 = double.tryParse(num2Controller.text) ?? 0.0;
    double sum = num1 + num2;
    Navigator.push(context, 
    MaterialPageRoute(builder: (context)=>Result_Screen(sum: sum),),);
  }
}