/*8. Write a program to show four images around Textview. */

import 'package:flutter/material.dart';

class ImageTextExample extends StatelessWidget {
  const ImageTextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Text Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/download1.jpeg',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'assets/download2.jpeg',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/download3.jpeg',
                  width: 50,
                  height: 50,
                ),
                Image.asset(
                  'assets/download4.jpeg',
                  width: 50,
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}