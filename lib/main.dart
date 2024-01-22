/*
1. Round tap button what adds a new glass
2. list of consume glass
3. consume - number of glass and time
show list
 */


// TODO : Replace List with stack

import 'package:flutter/material.dart';
import 'package:practice/home_screen.dart';

void main(){
  runApp(const Watertrackerapp());

}

class Watertrackerapp extends StatelessWidget{
  const Watertrackerapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}