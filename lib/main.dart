import 'package:flutter/material.dart';
import 'package:uiexp/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Color(0xFFEDF0F2),
        primaryColor: Color(0xFFEEF1F3),
        platform: TargetPlatform.iOS,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

