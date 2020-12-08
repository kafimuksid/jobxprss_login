import 'dart:async';
import 'package:flutter/material.dart';

import './login.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.amber[400]),
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/logo.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '  All the ',
                    style: TextStyle(
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'GREAT JOBS ',
                    style: TextStyle(
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'in',
                    style: TextStyle(
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    ' ONE PLACE!  ',
                    style: TextStyle(
                      fontSize: 23,
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
