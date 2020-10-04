void main(){
  var student1 = Student();
  student1.id = 23;
  student1.name = "Abubakar shaikh";

  student1.sleep();
}


class Student {
  int id = -1; // instance OR filed variable default value -1
  String name; // instance OR filed variable default value null

  void study(){
    print("${this.name} is now studying");
  }
  void sleep(){
    print("${this.id} is now sleeping");
  }
}