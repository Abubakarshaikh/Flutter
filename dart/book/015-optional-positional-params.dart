// 1. Required Parameters
// 2. OPtional Parameters

void main(){
  printcities("Karachi", "New York", "Mumbai");
  print(" ");

  printcountries("Dubai","Pakistan"); // You can skip the OPtional parameters
}

// Required Parameters
void printcities(String name1, String name2, String name3){
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");

}

// Optional Parameters
void printcountries(String name1, [String name2, String name3]){
  print("Name 1 is $name1");
  print("Name 2 is $name2");
  print("Name 3 is $name3");
}
