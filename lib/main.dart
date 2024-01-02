//statelesswidget is immutable
//statefulwidget is mutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  mySnackBar(context,msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));}

  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString() ,style: TextStyle(
              fontSize: 50,
            ),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  count++;
                  setState(() {});
                }, child: Icon(Icons.add)),
              ],
            ),


            ElevatedButton(onPressed: () {
              if(count<=0){
                mySnackBar(context, 'invalid value');
              }
              else{
                count--;
              }
              setState(() {});
              }, child: Icon(Icons.remove)),

          ],


        ),
      ),

    );
  }
}
