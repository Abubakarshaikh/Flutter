void main(){
  // Continue KW
  // Usings Labels

  myLoop: for (int i = 1; i <= 3; i ++){

    myInnerLoop: for (int j = 1; j <= 3; j ++){
      if (i ==2 && j == 2){
        continue myLoop; //stop and, Program Skip
      }
      print("$i and $j");
    }
  }
}
