// Flutter code sample for material.Scaffold.1

// This example shows a [Scaffold] with an [AppBar], a [BottomAppBar] and a
// [FloatingActionButton]. The [body] is a [Text] placed in a [Center] in order
// to center the text within the [Scaffold] and the [FloatingActionButton] is
// centered and docked within the [BottomAppBar] using
// [FloatingActionButtonLocation.centerDocked]. The [FloatingActionButton] is
// connected to a callback that increments a counter.

import 'package:flutter/material.dart';

void main() => runApp(VacilApp());

class VacilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: VacilLogin(),
      ),
    );
  }
}

class VacilLogin extends StatefulWidget {
  @override
  _VacilLoginState createState() => _VacilLoginState();
}

class _VacilLoginState extends State<VacilLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 92),
              width: 268,
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    width: 350.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
//                        labelText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                        ),
                        hintText: 'Username',
                      ),
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Source Sans Pro'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    width: 350.0,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
//                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.vpn_key,
                        ),
                        hintText: 'Password',
                      ),
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Source Sans Pro'),
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
