

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            height: 100,
            width: 400,
            child: const Icon(Icons.search,size: 25,),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            height: 50,
            width: 400,
            child: const Text('My Bang',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            height: 100,
            width: 400,
            child: Row(
              children: [
                Image.network('https://www.globalrepublic.in/cdn/shop/articles/image2.png?v=1666865339'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
