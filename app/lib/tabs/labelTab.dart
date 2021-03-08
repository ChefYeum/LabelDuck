import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

var button = IconButton(icon: Icon(Icons.star), onPressed: () => print("yee"));
// ElevatedButton(onPressed: () => print('oink'), child: new Text("Call me"));

const HOST_NAME = 'https://localhost:5000/';

class LabelableImage {
  final String imgUrl;
  final List<List<int>> coordinates;
  final List<String> objectList;

  LabelableImage(this.imgUrl, this.coordinates, this.objectList);

  factory LabelableImage.fromJson(Map<String, dynamic> json) {
    return LabelableImage(
        json['imgUrl'], json['coordinates'], json['objectList']);
  }
}

Future<LabelableImage> fetchImageUrl() async {
  final response = await http.get(Uri.https(HOST_NAME, 'file'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return LabelableImage.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

var imageData = fetchImageUrl();

String mockImgUrl = 'https://i.imgur.com/OqDnCPq.jpg';

var img = FutureBuilder<LabelableImage>(
  future: imageData,
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return Image.network(
          // 'https://i.imgur.com/OqDnCPq.jpg');
          snapshot.data?.imgUrl ?? 'https://picsum.photos/250?image=5');
    } else if (snapshot.hasError) {
      return Image.network('http://picsum.photos/250?image=5');
    }

    // By default, show a loading spinner.
    return CircularProgressIndicator();
  },
);

var imageStack = Stack(children: [
  img,
  Positioned(child: button, height: 50, width: 50),
]);

Widget labelTab =
    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
  imageStack,
  Text(
    'Click on the right eye',
    style: optionStyle,
  ),
]);
