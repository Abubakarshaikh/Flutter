import 'dart:io';
void main(){
  print("Total Marks ..");
  int total_marks = int.parse(stdin.readLineSync());

  print("Math");
  int math = int.parse(stdin.readLineSync());

  print("English");
  int english = int.parse(stdin.readLineSync());

  print("Islamiat");
  int islamiat = int.parse(stdin.readLineSync());

  print("");
  int obtained_marks = math + english + islamiat;
  print("Obtained marks is: $obtained_marks");

  if (math < 33){
    print("Fail in math");
  }
  else {
    print("Pass in Math");
  }

  if (english < 33){
    print("Fail in English");
  }
  else {
    print("Pass in English");
  }

  if (islamiat < 33){
    print("Fail in islamiat");
  }
  else {
    print("Pass in Islamiat");
  }

  double percentage = obtained_marks * 100 / total_marks;
  print("Your percentage is: $percentage");
  if (percentage < 33){
    print("Failed ..");
    }
    else if (percentage < 60){
    print("C Grade");
    }
    else if (percentage < 80){
      print("B Grade");
      }
      else if (percentage < 100){
      print("A Grade");
      }
      else {
      print("Invalid values ..");
      }
}