// Objectives
// 1. Default Constructor
// 2. Parameterized Constructor
// 3. Named Constructor
// 4. Constant Constructor


import '019-class-and-objects.dart';

void main(){
  var student1 = Student(23,"abubakar shaikh");
  print("${student1.id} and ${student1.name}");

  student1.sleep();
  student1.study();

  print(" ");
  var student2 = Student.myCustomConstructor();
  student2.id = 2;
  student2.name = "Osman";
  student2.sleep();
  student2.study();

  print(" ");
  var student3 = Student.myAnotherNamedConstructor(90, "Osman");
  print("${student3.id} and ${student3.name}");
  student3.sleep();
  student3.study();
}


class Student{
  int id = 1;
  String name;

  Student(this.id, this.name); //paramaterized Constructor

  Student.myCustomConstructor(){ //named constructor
    print("This is my custom constructor");
  }

  Student.myAnotherNamedConstructor(this.id,this.name); //named constructor

  void study(){
    print("${this.name} is now Studying");
  }
  void sleep(){
    print("${this.id} is now sleeping");
  } 
}