import 'dart:io';

void main(){
  print("Enter Your Email ..");

  var email = stdin.readLineSync();

  print("Enter Your Password ..");

  int pass = int.parse(stdin.readLineSync());

  var my_email = "shaikhabubakar983@gmail.com";
  int my_pass = 14081947;
  
  //Case :01
  // if (email == my_email && pass == my_pass){
  //   print("You Are Login ..");
  //   }

  // else {
  //   print("Invalid email or passwords ..");
  // }

  // Case :02
  if (email == my_email || pass == my_pass){
    if (email == my_email){
      if (pass == my_pass){
        print("You are log in ..");
      }
    }
    else {
      print("Invalid Email..");
    }
  }
  if (pass == my_pass){
    if (email == my_email){
      print("You are log in..");
    }
  }
  else {
    print("invalid Password..");
  }
  
}