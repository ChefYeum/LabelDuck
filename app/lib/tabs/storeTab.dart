import 'package:flutter/material.dart';

const ktext = TextStyle(
  color: Color.fromRGBO(41, 30, 83, 1),
  fontSize: 18,
  fontWeight: FontWeight.w900,
);
const kmiddletext = TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.w900,
);
const ksmalltext = TextStyle(
  color: Colors.white,
  fontSize: 15,
);
const klarge = TextStyle(
  color: Colors.white,
  fontSize: 32,
  fontFamily: 'Oswald',
);

class MyStore extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Store(),
    );
  }
}

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(111, 0, 244, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, top: 15, bottom: 15),
                      child: Text(
                        '4 points',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Continue Playing',
                style: ktext,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Transform(
                    transform: Matrix4.skewY(-0.05),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            // Color.fromRGBO(209, 4, 43, 1),
                            // Color.fromRGBO(214, 61, 99, 1),
                            //Color.fromRGBO(41, 30, 83, 1),
                            Color.fromRGBO(81, 73, 112, 1),
                            Color.fromRGBO(81, 73, 112, 1),
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Badge: Duck\'s View',
                          style: kmiddletext,
                        ),
                        Text(
                          'LEVEL 20',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 0, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform(
                                transform: Matrix4.skewX(-0.05),
                                origin: Offset(50.0, 50.0),
                                child: Material(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 30,
                                        top: 10,
                                        bottom: 10),
                                    child: Text(
                                      'PLAY AGAIN',
                                      style: TextStyle(
                                          //color: Colors.red.shade600,
                                          color: Color.fromRGBO(111, 0, 244, 1),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 80,
                    left: 200,
                    child: Image(
                      image: AssetImage('images/bird.png'),
                      height: 140,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'Rewards',
                style: ktext,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 73, 112, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 130, right: 100, top: 10, bottom: 10),
                        child: Text(
                          'Gift Cards',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 73, 112, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 130, right: 99, top: 10, bottom: 10),
                        child: Text(
                          'Discounts',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 73, 112, 1),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: IntrinsicWidth(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 120, right: 98, top: 10, bottom: 10),
                        child: Text(
                          'Free Prizes',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget storeTab = MyStore();
