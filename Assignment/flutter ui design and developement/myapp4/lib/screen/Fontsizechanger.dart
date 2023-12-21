/*6. create an application to increate font size when plus button click and
decrease when minus button click */


// ignore_for_file: override_on_non_overriding_member, duplicate_ignore

import 'package:flutter/material.dart';

class FontSizeChanger extends StatefulWidget {
  const FontSizeChanger({super.key});

  @override
  State<FontSizeChanger> createState() => _FontSizeChangerState();
}

class _FontSizeChangerState extends State<FontSizeChanger> {
  double fontsize =16.0;
  // ignore: override_on_non_overriding_member
  @override
  void changeFontSize(String action){
    setState(() {
      if (action == 'increase'){
        fontsize +=2.0;
      }
      else if (action == 'decrease'){
        fontsize -=2.0;
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Text',
              style: TextStyle(fontSize: fontsize),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>changeFontSize('increase'),
                  child: Text('+'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () =>changeFontSize('decrease'),
                  child: Text('-'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}