/*9. Write a program in android display screen color which the Color will be
select from the radio button.
 */

import 'package:flutter/material.dart';


class ColorSelectionScreen extends StatefulWidget {
  @override
  _ColorSelectionScreenState createState() => _ColorSelectionScreenState();
}

class _ColorSelectionScreenState extends State<ColorSelectionScreen> {
  Color _selectedColor = Colors.white;

  void _changeColor(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selection'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<Color>(
              title: const Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: (value) => _changeColor,
            ),
            RadioListTile<Color>(
              title: const Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: (value) => _changeColor,
            ),
            RadioListTile<Color>(
              title: const Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: (value) => _changeColor,
            ),
            RadioListTile<Color>(
              title: const Text('Yellow'),
              value: Colors.yellow,
              groupValue: _selectedColor,
              onChanged: (value) => _changeColor,
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: _selectedColor,
            ),
          ],
        ),
      ),
    );
  }
}