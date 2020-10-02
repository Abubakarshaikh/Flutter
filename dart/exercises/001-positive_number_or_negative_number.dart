import 'dart:io';
void main(){
  print("Enter Any Integers: ");
  int input_int = int.parse(stdin.readLineSync());

  if (input_int <= 0){
    print("This is Negative Integers. ");
  }
  else if (input_int <= 10){
    print("This is Positive Integers. ");
  }
  else {
    print("Invalid Value");
  }
}