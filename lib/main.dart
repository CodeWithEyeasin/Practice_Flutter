

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{

//tos message and snakebar is same
  mySnackBar(context,msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));}

  //create list
  var MyItems = [
    {"Name": "John Doe", "City": "New York", "Age": 28},
    {"Name": "Alice Smith", "City": "London", "Age": 35},
    {"Name": "Robert Johnson", "City": "Los Angeles", "Age": 42},
    {"Name": "Emily Davis", "City": "Paris", "Age": 29},
    {"Name": "Michael Brown", "City": "Sydney", "Age": 31},
    {"Name": "Sophia Lee", "City": "Tokyo", "Age": 26},
    {"Name": "Daniel Kim", "City": "Seoul", "Age": 38},
    {"Name": "Olivia Wilson", "City": "Toronto", "Age": 33},
    {"Name": "Ethan Miller", "City": "Berlin", "Age": 45},
    {"Name": "Ava Martinez", "City": "Mexico City", "Age": 27},
    {"Name": "Matthew Clark", "City": "Chicago", "Age": 30},
    {"Name": "Grace Turner", "City": "Sydney", "Age": 29},
    {"Name": "Ryan Garcia", "City": "Los Angeles", "Age": 32},
    {"Name": "Sophie Baker", "City": "Paris", "Age": 28},
    {"Name": "Samuel White", "City": "London", "Age": 37},
    {"Name": "Emma Turner", "City": "Berlin", "Age": 31},
    {"Name": "William Carter", "City": "Tokyo", "Age": 34},
    {"Name": "Lily Adams", "City": "Toronto", "Age": 26},
    {"Name": "Benjamin Hall", "City": "Seoul", "Age": 40},
    {"Name": "Zoe Martinez", "City": "Mexico City", "Age": 33}
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ),

      body: ListView.builder(
      itemCount: MyItems.length,
      itemBuilder: (context,index){
        return InkWell(
          onDoubleTap: (){mySnackBar(context, MyItems[index]["Age"].toString());},
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text(MyItems[index]["Name"].toString()),
            subtitle: Text(MyItems[index]["city"].toString()),
          ),
        );
      },
    ),


      //this is Dynamic Listview
      // ListView.builder(
      //   itemCount: MyItems.length,
      //   itemBuilder: (context,index){
      //     return ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text(MyItems[index]["Name"].toString()),
      //       subtitle: Text(MyItems[index]["city"].toString()),
      //       onTap: (){mySnackBar(context, MyItems[index]["Age"].toString());},
      //     );
      //   },
      // ),
      //this is static listview
      // ListView(
      //   children: [
      //     ListTile(leading: Icon(Icons.star), title: Text('Item 1'), onTap: (){mySnackBar(context, 'Item 1');},),
      //     ListTile(leading: Icon(Icons.star), title: Text('Item 2'), onTap: (){mySnackBar(context, 'Item 2');},),
      //     ListTile(leading: Icon(Icons.star), title: Text('Item 3'), onTap: (){mySnackBar(context, 'Item 3');},),
      //     ListTile(leading: Icon(Icons.star), title: Text('Item 4'), onTap: (){mySnackBar(context, 'Item 4');},),
      //     ListTile(leading: Icon(Icons.star), title: Text('Item 5'), onTap: (){mySnackBar(context, 'Item 5');},),
      //
      //   ],
      // ),
    );
  }
}