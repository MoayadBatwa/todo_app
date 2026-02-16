class TaskModel {
  final int id;
  String titleTask;
  String descriptionTask;
  bool completed;

  TaskModel({
    required this.id, 
    required this.titleTask, 
    required this.descriptionTask, 
    this.completed = false
  });

}