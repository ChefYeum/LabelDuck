import 'package:flutter/material.dart';

var imageUrls = [
  "https://storage.googleapis.com/bgn-university-hack-rem-1018.appspot.com/processed2.jpg",
  "https://storage.googleapis.com/bgn-university-hack-rem-1018.appspot.com/processed1.jpg",
  "https://storage.googleapis.com/bgn-university-hack-rem-1018.appspot.com/processed3.jpg",
  "https://storage.googleapis.com/bgn-university-hack-rem-1018.appspot.com/processed4.jpg",
];

var objectNames = ["Milk", "Cone", "Traffic Light", "Left Lung", "Sign"];

var objLocations = [
  [350, 311],
  [289, 157],
  [350, 311],
  [289, 157],
];

class LabelTab extends StatefulWidget {
  LabelTab() : super();

  @override
  _LabelTabState createState() => _LabelTabState();
}

class _LabelTabState extends State<LabelTab> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = (_counter + 1) % 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    var img = GestureDetector(
      onTap: _incrementCounter,
      child: Image.network(imageUrls[_counter]),
    );
    var objName = objectNames[_counter];

    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Stack(children: [img]),
      Text(
        'Click on the $objName',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'SFProText',
        ),
      )
    ]);
  }
}
