import 'package:flutter/material.dart';

class CitySelectionWidget extends StatefulWidget {
  @override
  _CitySelectionWidgetState createState() => _CitySelectionWidgetState();
}

class _CitySelectionWidgetState extends State<CitySelectionWidget> {
  String selectedCity = 'Select a City';

  List<String> cities = ['New York', 'Paris', 'Tokyo', 'London', 'Berlin',];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showCitySelectionDialog(context);
          },
          child: Text('Select Cities',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 20),
        Text(
          'Selected City: $selectedCity',
          style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  void showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City',style: TextStyle(fontWeight: FontWeight.bold),),
          content: SingleChildScrollView(
            child: Column(
              children: cities
                  .map(
                    (city) => ListTile(
                      title: Text(city),
                      onTap: () {
                        setState(() {
                          selectedCity = city;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
