import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

var button = IconButton(icon: Icon(Icons.star), onPressed: () => print("yee"));
// ElevatedButton(onPressed: () => print('oink'), child: new Text("Call me"));

const HOST_NAME = 'https://localhost:5000/';

Future<String> fetchImageUrl() async {
  final response = await http.get(Uri.https(HOST_NAME, 'file'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return response.body;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

var futureImgUrl = fetchImageUrl();

var img = FutureBuilder<String>(
  future: futureImgUrl,
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      return Image.network(
          snapshot.data ?? 'https://picsum.photos/250?image=5');
    } else if (snapshot.hasError) {
      return Image.network(
          snapshot.data ?? 'https://picsum.photos/250?image=5');
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
