import 'package:flutter/material.dart';
import 'package:practice/todo_list_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const TodoListScreen(),
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          titleTextStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.brown),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,

            ),
            padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            )
        ),
        )
      ),
    );
  }
}