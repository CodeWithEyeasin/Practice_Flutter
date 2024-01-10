

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
  int Amount1=51;
  int Amount2=30;
  int Amount3=43;

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
            child: const Text('My Bag',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white60,
                  offset: Offset(2,2),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.network('https://www.globalrepublic.in/cdn/shop/articles/image2.png?v=1666865339',
                  height: 90,width: 70,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
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
                            fontSize: 18,
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
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 129,
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          const Icon(Icons.more_vert,color: Colors.grey,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 66,
                            width: 40,
                            child: Text('$Amount1\$',style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],

                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15,top: 15),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white60,
                  offset: Offset(2,2),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.network('https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHQlMjBzaGlydHxlbnwwfHwwfHx8MA%3D%3D',
                  height: 90,width: 70,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      RichText(text: const TextSpan(
                          text: 'T-Shirt\n',style: TextStyle(
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
                              text: 'Gray    ',style: TextStyle(
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
                            fontSize: 18,
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
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 132,
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          const Icon(Icons.more_vert,color: Colors.grey,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 66,
                            width: 40,
                            child: Text('$Amount2\$',style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],

                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15,top: 15),
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white60,
                  offset: Offset(2,2),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.network('https://i.pinimg.com/736x/72/3a/3f/723a3f75f3c8cb5613ec761182904f93.jpg',
                  height: 90,width: 70,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
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
                              text: 'Size:',style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,

                            ),
                            ),
                            TextSpan(
                              text: 'M',style: TextStyle(
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
                            fontSize: 18,
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
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 129,
                      alignment: Alignment.centerRight,
                      child: Column(
                        children: [
                          const Icon(Icons.more_vert,color: Colors.grey,),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 66,
                            width: 40,
                            child: Text('$Amount3\$',style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],

                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
