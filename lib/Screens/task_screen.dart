import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/Data/data_source.dart';
import 'package:todo_app/core/Routing/route_path.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final List<String> imagesPath = [
    "https://thumbs.dreamstime.com/b/top-rating-banner-sale-label-business-concept-logo-template-vector-illustration-stock-image-top-rating-banner-sale-label-business-261390195.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_oj3uHUdjvCsDrcvzT4sThOaTpg0vosrf6w&s", 
    "https://media.istockphoto.com/id/1294684226/vector/top-3-red-button-flat-vector-illustration-on-white-background.jpg?s=612x612&w=0&k=20&c=xEWpyR7PJq6lrzsTAhC5EEjmI-yqQ9rARRIw3dv6bqg=",
    "https://img.freepik.com/premium-vector/number-four-top-star-badge-vector-rating-symbol-bright-ribbon-design_213497-3682.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyynPkq3g_Xq-hhURfQJSdmem7qhFR1xRb3w&s",
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(),

        bottomNavigationBar: Container(width: 50,height: 70, color: Colors.amber,),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push(RoutePath.addTask);
          }
        ),

        body: 
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                
                ...List.generate(DataSource().allTasksLength(), (index) {
                  return
                    Column(children: [
                      SizedBox(height: 10),

                      SizedBox(
                      // height: 200,
                      width: 150,
                      
                      child:
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          child:
                            Image.network(imagesPath[index]),
                        )
                      ),

                      SizedBox(height: 10),

                      Card(
                        color: const Color.fromARGB(214, 227, 229, 230),
                        child: ListTile( 
                          leading: Icon(Icons.task),
                        
                          title: Text(DataSource().allTasks[index].titleTask),
                        
                          subtitle: Text(DataSource().allTasks[index].descriptionTask),
                        
                          trailing: Checkbox(value: DataSource().allTasks[index].completed, onChanged: (value){
                            // DataSource().allTasks[index].completed = !DataSource().allTasks[index].completed;
                            DataSource().switchCheckedByID(DataSource().allTasks[index].id);
                            setState(() {});
                          }),
                        
                          
                        
                        ),
                      )
                    ],);
                    
                  },
                ),

                

                // Card(
                //   color: const Color.fromARGB(214, 227, 229, 230),
                //   child: ListTile( 
                //     leading: Icon(Icons.task),
                  
                //     title: Text("Task 1"),
                  
                //     subtitle: Text("Task Description"),
                  
                //     trailing: Checkbox(value: checked, onChanged: (newValue){
                //       setState(() {
                //         checked = !checked;
                //       });
                //     }),
                  
                    
                  
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
  }
}