

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF1F1F1)),
      home:  const HomeScreen(),

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
  int Count2=1;
  int Count3=1;
  int Amount1=51;
  int Amount2=30;
  int Amount3=43;
  int total=124;

  TotalAmount() {
    return total=((Count1*Amount1)+(Count2*Amount2)+(Count3*Amount3));
  }
  mySnackBar(context,msg) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));}

  myDiaglog(String ItemName){
    showDialog(context: context, builder: (BuildContext context){
      return  AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RichText(text: TextSpan(
                text: 'Congratulation!\n\n',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  const TextSpan(
                    text: '  You have added\n',
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),

                  ),
                  const TextSpan(
                    text: '                5\n',
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: '$ItemName ',
                    style:  const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const TextSpan(
                      text: 'on your bag!',
                    style:  TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]

              )),
            )
          ],
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: const Size(270, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),

                ), child: const Text('OKAY'),),

            ],
          ),
        ],
      );
    });
  }


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
            child: const Text('My Bag',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
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
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                  child:  Image.network('https://www.globalrepublic.in/cdn/shop/articles/image2.png?v=1666865339',
                    height: 100,width: 70,
                    fit: BoxFit.cover,
                  ),
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
                              if(Count1>1){
                                Count1--;
                                TotalAmount();
                                setState(() {});
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
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
                             if(Count1==5){
                               myDiaglog('Pullover');
                             }else{
                               Count1++;
                               TotalAmount();
                               setState(() {});
                             }


                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
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
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                  child: Image.network('https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHQlMjBzaGlydHxlbnwwfHwwfHx8MA%3D%3D',
                    height: 100,width: 70,
                    fit: BoxFit.cover,
                  ),
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
                              if(Count2>1){
                                Count2--;
                                TotalAmount();
                                setState(() {});
                              }


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
                          Text(Count2.toString(),style: const TextStyle(
                            fontSize: 18,
                          ),),
                          ElevatedButton(
                            onPressed: () {
                              if(Count2==5){
                                myDiaglog('T-Shirt');
                                setState(() {});
                              }else{
                                Count2++;
                                TotalAmount();
                                setState(() {});
                              }


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
                ClipRRect(
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0),bottomLeft: Radius.circular(8.0)),
                  child: Image.network('https://i.pinimg.com/736x/72/3a/3f/723a3f75f3c8cb5613ec761182904f93.jpg',
                    height: 100,width: 70,
                    fit: BoxFit.cover,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    children: [
                      RichText(text: const TextSpan(
                          text: 'Sport Dress\n',style: TextStyle(
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
                              if(Count3>1){
                                Count3--;
                                TotalAmount();
                                setState(() {});
                              }


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
                          Text(Count3.toString(),style: const TextStyle(
                            fontSize: 18,
                          ),),
                          ElevatedButton(
                            onPressed: () {
                              if(Count3==5){
                                Center(
                                  child:myDiaglog('Sport Dress'),
                                );

                                setState(() {});
                              }else{
                                Count3++;
                                TotalAmount();
                                setState(() {});
                              }


                            },
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
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
          Container(
            margin: const EdgeInsets.only(left: 15,right: 15),
            alignment: Alignment.bottomRight,
            height: 270,
            width: 400,
            child: Row(
              children: [
                RichText(text: TextSpan(
                  text: 'Total amount:                                                           ',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      text: '$total\$',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ],

                )),

              ],
            ),
          ),
          ElevatedButton(onPressed: (){
            mySnackBar(context, 'Congratulation');

          },style: ElevatedButton.styleFrom(
            primary: Colors.red,
            fixedSize: const Size(360, 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),

          ), child: const Text('CHECK OUT',style: TextStyle(
            color: Colors.white,
          ),),)

        ],
      ),
    );
  }
}
