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
        //This is in order to avoid overflow on TextField
        resizeToAvoidBottomPadding: false,
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
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 275.0,
                    margin: EdgeInsets.only(top: 15.0),
                    child: Image(
                      image: AssetImage('images/logo.png'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    width: 300,
                    height: 50,
                    child: Theme(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            height: 2.8,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      data: Theme.of(context).copyWith(
                        primaryColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                    ),
                    child: Theme(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.vpn_key,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            height: 3.3,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                      ),
                      data: Theme.of(context)
                          .copyWith(primaryColor: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 125, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      color: Color(0xFFFFCD00),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {},
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
