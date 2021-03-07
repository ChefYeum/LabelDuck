import 'package:flutter/material.dart';

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

var img = Image(
    image: NetworkImage(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'));

var button =
// IconButton(icon: Icon(Icons.star), onPressed: () => print("yee"));
    ElevatedButton(onPressed: () => print('oink'), child: new Text("Call me"));

var imageStack = Stack(children: [
  // Positioned(
  //   child: button,
  //   bottom: 1,
  // ),
  img,
  button,
]);

Widget labelTab =
    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
  imageStack,
  Text(
    'Click on the right eye',
    style: optionStyle,
  )
]);
