// Objective: Exceptional Handling
// 1. On clause
// 2. catch clause with Exception Object
// 3. catch clause with Exception Object and StackTrace Object
// 4. Finally clause 
// 5. Create our own custom Exception


void main(){
  print("CASE '1' ");
  //^ CASE 1: When you know the exception to be thrown, use ON Clause

  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  }
  on IntegerDivisionByZeroException {
    print("Connot Divided BY Zero");
  }
  print("");

  print("CASE '2' ");
  //^ CASE 2: When you do not know the exception use CATCH Clause
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  }
  catch (e) {
    print("The exception thrown is $e");
  }
  print("");

  print("CASE '3' ");
  //^ CASE 3: Using STACK TRACE to know the events occurred before Exception was thrown
  try {
    int result = 12 ~/ 0;
    print("The result is $result");
  }
  catch (e,s){
    print("The exception thrown is $e");
    print("STACK TRACE \n $s");
  }
  print("");

  print("CASE '4' ");
  //^ CASE 4: Whether there is an Exception or not, FINALLY Clause is always Executed
  try {
    int result = 12 ~/3;
    print("Th eresult is $result");
  }
  catch (e){
    print("The exception Thrown is $e");
  }
  finally {
    print("This is Finallt Clause and ALways Executed. ");
  }
  print("");

  print("CASE '5' ");
  // CASE 5: Custom Exception
  try {
    DepositMoney(-1);
  }
  catch (e) {
    print(e.errorMessage());
  }
  finally {
    // code
  }
}

class DepositException implements Exception {
  String errorMessage() {
    return "You cannot enter amount less than 0";
  }
}

void DepositMoney(int amount){
  if (amount < 0){
    throw new DepositException();
  }
  else {
    print("The amount is $amount");
  }
}