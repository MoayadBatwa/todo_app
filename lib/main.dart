import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(),

        body: 
        ListTile(
          leading: Icon(Icons.task),

          title: Text("Task 1"),

          subtitle: Text("Task Description"),

          

        ),
      ),
    );
  }
}
