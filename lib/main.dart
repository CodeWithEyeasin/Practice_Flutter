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
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.black54, size: 30,),//home icon
        title: Text('Home',
        style: TextStyle(
            color: Colors.black,
        ),
        ),
        backgroundColor: Colors.amber,
        elevation: 5,//shadow use

      ),
      body: Center(
        //child: Image.network('https://www.univariety.com/blog/wp-content/uploads/2014/08/motivational-goals.jpg'),)
          child: Image.asset('Image/uncle Bob.jpg',
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          //repeat: ImageRepeat.repeat,

          ),
      /* Center(
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

      ),*/
      ),
    );
  }

}