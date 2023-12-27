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
      appBar: AppBar(
        title: Text('Home',),
      ),
    body:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.end,
      //mainAxisSize: MainAxisSize.min,
      children: [
        RichText(text: TextSpan(
            text: ' Hello ostad',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,

            ),
          children: [
            TextSpan(
              text: ' i am',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
              )
            ),
            TextSpan(
              text: ' eyeasin',
              style: TextStyle(
              color: Colors.blue,
              fontSize: 19,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
            )
            )
          ]
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Text('Hello'),
            Text("World"),

            ElevatedButton(onPressed: () {
              //showAboutDialog(context: context);
              // showDialog(context: context, builder: (context)
              // {
              //   return //Text('Hello App');
              //   AlertDialog(
              //     title: Text('Message'),
              //     content: Text('Hello welcome to app'),
              //     actions: [
              //       ElevatedButton(onPressed: () {}, child: Text('cancel')),
              //     ],
              //
              //   );
              // });
              showModalBottomSheet(
                  //isDismissible: false,
                backgroundColor: Colors.blue,
                  barrierColor: Colors.amber,
                  context: context, builder: (context)
              {
                return //Text('Hello App');
                  Column(
                    children: [
                      Text('hello'),
                    ],
                  );
              });
            }, child: Text('Tab Here')),
          ],
        ),
      ],

    ),

    );
  }

}