import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {

  final titleTask = TextEditingController();
  final descriptionTask = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(190, 0, 187, 212),

        actions: [
          IconButton(onPressed: () {

            // assign the inputs to the model
            
            setState(() {});
          },
          icon: Icon(Icons.save), iconSize: 40,)],
      ),

      body:
      Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: titleTask,
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
            controller: descriptionTask,
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
      ],)


    );
  }
}