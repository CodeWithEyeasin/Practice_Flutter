

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

  int Count1=1;
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
                Column(
                  children: [
                    RichText(text: const TextSpan(
                      text: 'Pullover\n',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                      children: [
                        TextSpan(
                          text: 'Color: ',style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                        ),
                        ),
                        TextSpan(
                          text: 'Black   ',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,

                        ),
                        ),
                        TextSpan(
                          text: 'Size: ',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,

                        ),
                        ),
                        TextSpan(
                          text: 'L',style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,

                        ),
                        ),
                      ]
                    ),),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {


                          },
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white
                          ),
                          child: const Text('-',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),),
                        ),
                        Text(Count1.toString(),style: const TextStyle(
                          fontSize: 20,
                        ),),
                        ElevatedButton(
                          onPressed: () {


                          },
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              backgroundColor: Colors.white
                          ),
                          child: const Text('+',style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
