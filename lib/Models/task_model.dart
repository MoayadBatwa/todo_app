class TaskModel {
  final int id;
  late String titleTask;
  late String descriptionTask;
  bool completed;

  TaskModel({
    required this.id, 
    required this.titleTask, 
    required this.descriptionTask, 
    this.completed = false
  });

}