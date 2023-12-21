/*5. create an application to change background when button is clicked */

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
class BackgroundChangeScreen extends StatefulWidget {
  @override
  _BackgroundChangeScreenState createState() => _BackgroundChangeScreenState();
}

class _BackgroundChangeScreenState extends State<BackgroundChangeScreen> {
  Color _backgroundColor = Colors.white;
  RandomColor _randomColor = RandomColor();

  void _changeBackgroundColor() {
    // Generate a random color
    Color newColor = _randomColor.randomColor();

    setState(() {
      _backgroundColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Change App'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Click the button to change the background color',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _changeBackgroundColor();
                },
                child: Text('Change Background'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
