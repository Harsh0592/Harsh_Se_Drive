//1. Create below screens

import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              child: Image.network("https://cdn.pixabay.com/photo/2013/10/02/23/03/mountains-190055_1280.jpg"),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text("Harsh Dalsaniya"),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(Icons.star,color: Colors.amber,),
                            Text("41"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        child: Text("Harsh patel"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.call),
                  Text("Call 1")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.call),
                  Text("Call 2")
                ],
              ),
              Column(
                children: [
                  Icon(Icons.call),
                  Text("Call 3")
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
          )
        ],
      ),
    );
  }
}