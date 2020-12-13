import 'package:flutter/material.dart';
//import 'package:ipomarket/helper/Style.dart';
//import 'package:ipomarket/ui/SplashScreen.dart';

import './splashScrn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JobXprss Admin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.amber,
          accentColor: Colors.amberAccent,
          brightness: Brightness.dark),
      home: SplashScreen(),
    );
  }
}
