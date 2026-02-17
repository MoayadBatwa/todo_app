import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/Routing/route_path.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(),

        bottomNavigationBar: Container(width: 50,height: 70, color: Colors.amber,),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.go(RoutePath.addTask);
          }
        ),

        body: 
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: const Color.fromARGB(214, 227, 229, 230),
                  child: ListTile( 
                    leading: Icon(Icons.task),
                  
                    title: Text("Task 1"),
                  
                    subtitle: Text("Task Description"),
                  
                    trailing: Checkbox(value: checked, onChanged: (newValue){
                      setState(() {
                        checked = !checked;
                      });
                    }),
                  
                    
                  
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}