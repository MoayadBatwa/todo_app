import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_app/Models/task_model.dart';
import 'package:todo_app/core/Data/data_source.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  final controllerTitleTask = TextEditingController();
  final controllerDescriptionTask = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(190, 0, 187, 212),

        actions: [
          IconButton(onPressed: () {

            // assign the inputs to the model
            final newTask = TaskModel(
              id: Random().nextInt(99999999), 
              titleTask: controllerTitleTask.text, 
              descriptionTask: controllerDescriptionTask.text
            );

            DataSource().addTask = newTask;

            // setState(() {}); not needed, we are not updating the UI
          },
          icon: Icon(Icons.save), iconSize: 40,)],
      ),

      body:
      SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerTitleTask,
              onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
              decoration: InputDecoration(
                labelText: "Main Task",
                hintText: "Enter the Task here...",
                border: OutlineInputBorder()
              ),
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controllerDescriptionTask,
              maxLines: 5,
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
        
              decoration: InputDecoration(
                labelText: "Task Description",
                hintText: "Enter the Task Description...",
                border: OutlineInputBorder(gapPadding: 10)
              ),
            ),
          ),
        ],),
      )


    );
  }
}