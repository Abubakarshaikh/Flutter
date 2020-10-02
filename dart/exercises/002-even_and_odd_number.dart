import 'dart:io';
void main(){
  print("Enter Any Odd OR Even Number");
  int input_int = int.parse(stdin.readLineSync());
  if (input_int == 1 || input_int == 0 ){
    print("$input_int is Invalid Input, Please Enter Any Even OR Odd Number");
  }
  else if (input_int % 2 == 0) {
    print("$input_int, Even Number");
  } 
  else if (input_int % 3 ==0){
    print("$input_int, Is Odd Number");
  }
  else {
    print("Invalid Value, Try again ...");
  }
}