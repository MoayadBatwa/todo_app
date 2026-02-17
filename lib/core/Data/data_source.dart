import 'package:todo_app/Models/task_model.dart';

class DataSource {
  static final  DataSource _dataSource = DataSource._base();
  final List<TaskModel> _tasks = [];

  DataSource._base();

  factory DataSource(){
    return _dataSource;
  }

  set addTask(TaskModel newTask){
    _tasks.add(newTask);
  }

  List<TaskModel> get allTasks{
    return _tasks;
  }

  

  
}