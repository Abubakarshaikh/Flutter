class Task {
  final String name;
  bool isDone;


  Task({this.name, this.isDone = false});
  void toggleDone(){
    isDone  =  !isDone;
  }
}

// --------------> // Getters and setters are special class methods that is used to initialize and retrieve 
                   // the values of class fields respectively. <--------------------------