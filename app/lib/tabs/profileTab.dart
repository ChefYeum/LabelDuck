import 'package:flutter/material.dart';


Widget profileTab = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    CircleAvatar(
      radius:50,
      backgroundColor: Colors.black,
      backgroundImage: AssetImage('images/userIcon.png'),

    ),

    Text(
      'John Doe',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'SFProText',

      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

      child: Row(
          children: <Widget>[
            SizedBox(
              width:110.0,
            ),
            Icon(
              Icons.star,
            ),
            Icon(
              Icons.star,
            ),
            Icon(
              Icons.star,
            ),
            Icon(
              Icons.star,
            ),
            Icon(
              Icons.star_half,
            ),

          ]
      ),

    ),


    SizedBox(
        height:20,
        width:200,
        child: Divider(
          color: Colors.black54,
        )
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade100,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              Icons.monetization_on_outlined,
            ),
            SizedBox(
              width:25.0,
            ),
            Text(
              'Tokens : 10',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 150.0,),
            Icon(
              Icons.keyboard_arrow_right,
            ),
          ]
      ),

    ),

    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade100,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              Icons.history,
            ),
            SizedBox(
              width:25.0,
            ),
            Text(
              'Privacy',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 180.0,),
            Icon(
              Icons.keyboard_arrow_right,
            ),
          ]
      ),

    ),

    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade100,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              Icons.contact_support_outlined,
            ),
            SizedBox(
              width:25.0,
            ),
            Text(
              'Help & Support',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 120.0,),
            Icon(
              Icons.keyboard_arrow_right,
            ),
          ]
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade100,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              Icons.person_add_alt_1_outlined,
            ),
            SizedBox(
              width:25.0,
            ),
            Text(
              'Invite a Friend',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 130.0,),
            Icon(
              Icons.keyboard_arrow_right,
            ),
          ]
      ),
    ),
    Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.shade100,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              Icons.logout,
            ),
            SizedBox(
              width:25.0,
            ),
            Text(
              'Logout',
              style: TextStyle(
                fontFamily: 'SFProText',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 182.0,),
            Icon(
              Icons.keyboard_arrow_right,
            ),
          ]
      ),
    ),
  ],
);



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: profile(),
      //   routes: <String, WidgetBuilder>{
      //     '/Profile' : (context) => ProfileView()
      // },
    );
  }
}
class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius:50,
              backgroundColor: Colors.black,
              backgroundImage: AssetImage('images/userIcon.png'),

            ),

            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'SFProText',

              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),

              child: Row(
                  children: <Widget>[
                    SizedBox(
                      width:100.0,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star,
                    ),
                    Icon(
                      Icons.star_half,
                    ),

                  ]
              ),

            ),


            SizedBox(
                height:20,
                width:200,
                child: Divider(
                  color: Colors.black54,
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100,
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.monetization_on_outlined,
                    ),
                    SizedBox(
                      width:25.0,
                    ),
                    Text(
                      'Tokens : 10',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 150.0,),
                    Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ]
              ),

            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100,
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.history,
                    ),
                    SizedBox(
                      width:25.0,
                    ),
                    Text(
                      'Privacy',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 180.0,),
                    Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ]
              ),

            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100,
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.contact_support_outlined,
                    ),
                    SizedBox(
                      width:25.0,
                    ),
                    Text(
                      'Help & Support',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 120.0,),
                    Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100,
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.person_add_alt_1_outlined,
                    ),
                    SizedBox(
                      width:25.0,
                    ),
                    Text(
                      'Invite a Friend',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 130.0,),
                    Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.shade100,
              ),
              child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.logout,
                    ),
                    SizedBox(
                      width:25.0,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 182.0,),
                    Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );

  }
}
