import 'dart:io';

void main(){
  print("Enter Your Age: ");
  int age = int.parse(stdin.readLineSync());

  print("Enter Your Gender: ");
  var gender = stdin.readLineSync();

  if (age <= 15  &&(gender == "male" || gender == "female")){
    print("Your Ticket is: 300/- Only. ");
  } else if (age <= 50 && (gender == "male" || gender =="female")){
    print("Your Ticket is: 500/- Only. ");
  } else {
    print("Your Ticket is 300/- Only. ");
  }
}