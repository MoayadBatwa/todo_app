import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(

        appBar: AppBar(),

        body: 
        Padding(
          padding: EdgeInsets.all(16.0),
          child: CheckboxListTile( 
            secondary: Icon(Icons.task),
          
            title: Text("Task 1"),
          
            subtitle: Text("Task Description"),

            // check direction
            controlAffinity: ListTileControlAffinity.trailing, 

            selected: _value,
            value: _value,
            onChanged: () {
              value = !value;
            },
          
            
          
          ),
        ),
      ),
    );
  }
}
