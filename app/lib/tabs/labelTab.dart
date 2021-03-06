import 'package:flutter/material.dart';

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

var labelTab =
    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
  Image(
      image: NetworkImage(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
  Text(
    'Click on the right eye',
    style: optionStyle,
  )
]);
