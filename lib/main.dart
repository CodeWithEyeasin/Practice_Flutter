import 'package:flutter/material.dart';
///KISS PRINCIPLE -> KIP IT SIMPLE STUPID

void main() {
  runApp(const MyApp());
}
//Push
//Pop
//PushReplacement
//PushAndRemoveUntil
//Data Passing -in and back

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              //Route = Screen
              // Navigator = Road
              ///Route 1(Current screen) => Route 2(Settings Screen
              /// step 1- Navigator - push
              /// Step 2- Context - (Current Screen/Route)
              /// step 3- Convert SettingsScreen as Route with MaterialPageRoute
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen(username: 'Eyeasin',age: 18,),),
              ).then((value) {
                print(value);
              });
            }, child: const Text('Go To Setting'))
          ],
        ),
      ),

    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key, required this.username,this.age});///this.age this is optional

  final String username;
  final int? age;///this is optional

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(username),
            Text(age.toString()),
            ElevatedButton(onPressed: () {
              /// back to previous screen
              Navigator.pop(context,'Arafat');
            }, child: const Text('Back to Home Screen')),
            ElevatedButton(onPressed: () {
              /// go to profile
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
            }, child: const Text('Go to Profile')),

            ElevatedButton(onPressed: () {
              /// push by replacement
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
            }, child: const Text('Go to Profile by replace')),
          ],
        ),
      ),

    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              /// back to Settings screen
              Navigator.pop(context);
            }, child: const Text('Back to Settings')),
            ElevatedButton(onPressed: () {
              /// back to home screen
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const HomeScreen()), (route) => false);
            }, child: const Text('Back to Home')),
          ],
        ),
      ),

    );
  }
}


