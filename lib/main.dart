import 'package:flutter/material.dart';
import 'package:movies_streaming/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Streaming',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
