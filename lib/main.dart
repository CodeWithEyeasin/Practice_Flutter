import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen(),

    );
  }

}

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xFF10c419),
      body: Center(
        child: Text('Hello Flutter, My name is Eyeasin Arafat',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
          color: Colors.white,
          fontSize: 34,
            fontWeight: FontWeight.bold,
          //backgroundColor: Colors.white,
            decoration: TextDecoration.underline,
          wordSpacing: 1,
          letterSpacing: 2,
        ),),
      ),
    );
  }

}