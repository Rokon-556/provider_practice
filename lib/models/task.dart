class Task{
  final String taskName;
  bool taskDone;

  Task({required this.taskName, this.taskDone=false});

void toggleBox(){
  taskDone=!taskDone;
}
}