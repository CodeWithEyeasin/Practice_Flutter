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
  TextEditingController searchTextFiledController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',),
        leading: Icon(Icons.home),
      ),
    body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
print('Tapped on Tab button');
          },
              child: Text('Tab here'),
          onLongPress: () {
            print('Long pressed on Tab button');
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.black,
              // maximumSize: Size(300, 80),
              // minimumSize: Size(300, 40),
              // padding: EdgeInsets.all(16),
              //   padding: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                padding: EdgeInsets.only(left: 32,top: 16,right: 32,bottom: 30),
              elevation: 5,
              shadowColor: Colors.black,
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),

          ),
TextButton(onPressed: (){
  print('Pressed on text button');
}, child: Text('Text Button'),
style: TextButton.styleFrom(
  backgroundColor: Colors.lightGreen,
  //all same
),
),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),

          // FloatingActionButton(onPressed: (){},child: Text(' button'),)

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchTextFiledController,
              onTap: () {
                print('Tapped');
              },
              keyboardType: TextInputType.phone,
              onChanged: (String input){
                print('Input');
              },
              textInputAction: TextInputAction.search,
              onSubmitted: (String value){
                print(searchTextFiledController.text);
                searchTextFiledController.clear();
              },
              obscureText: true,
              // obscureText: false,
              enabled: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                hintText: 'Enter Your Name',
                label: Text('Name'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.amber,
                    width: 10,
                    style: BorderStyle.solid,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.amber,
                      width: 10,
                      style: BorderStyle.solid,
                    )
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 1,
                      style: BorderStyle.solid,
                    )
                ),
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 10,
                      style: BorderStyle.solid,
                    )
                ),

              ),
            ),
          ),
      GestureDetector(
  onTap: () {
    print('tapped on container');
  },
  child: Container(


    margin: EdgeInsets.all(8),
    width: 500,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.red,
      border: Border.all(
          color: Colors.green,
          width: 10,
          style: BorderStyle.solid
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 4,
          offset: Offset(4,8),
        ),
      ],
      //shape: BoxShape.circle

    ),
    alignment: Alignment.center,
    child:Icon(Icons.android),
    //Text('Text'),
  ),
),
          InkWell(
            onTap: () {
              print('on tapped on text Button');

            },
            splashColor: Colors.red,
            highlightColor: Colors.green,
            radius: 10,
            child: Text('Text Button'),
          ),
        ],
      ),
    ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

    );
  }

}