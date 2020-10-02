// Write a Python program to construct the following pattern, using a nested for loop.

// *  1. 1st iteration end
// * * 2. 2nd iteration
// * * * 
// * * * * 
// * * * * * 

import 'dart:io';
void main(){
  for(int a =1; a <= 5; a++){

    for(int b = 1; b<=a; b ++){
      stdout.write("*");
    }
    print(" ");
  }
}