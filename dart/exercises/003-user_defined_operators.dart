import 'dart:io';

void main(){
  print("Input Value One");
  int input_int_01 = int.parse(stdin.readLineSync());

  print("Input Value Two");
  int input_int_02 = int.parse(stdin.readLineSync());

  print("Add any operator, + , - , / , % ");
  var input_operator = stdin.readLineSync();


  if (input_operator == "+"){
     print("${input_int_01 + input_int_02}"); 
  }
  else if (input_operator == "-"){
    print("${input_int_01 - input_int_02}");
  }

  else if (input_operator == "*") {
    print("${input_int_01 * input_int_02}");
  }
  else if (input_operator == "/") {
    print("${input_int_01 / input_int_02}");
  }
  else if (input_operator == "%") {
    print("${input_int_01 / input_int_02}");
  }
  else {
    print("Invalid Operator. ");
  }
}