class Task{
  String title;
  bool isDone;
  Task({this.isDone = false,this.title});
  void toggleDone(){
    isDone = !isDone;
  }
}