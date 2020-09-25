void main(){
  // literal
  var isCool = true;
  int x = 2;
  "john";
  4.5;

  // various way to define string literal in dart
  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'it\'s easy';
  String s4 = "it's easy";
  String s5 = 'This is going to be a very long string .'
               'This is just a Sample demo in dart Programming language';
  
  
  // String interpolation : Use ["My name is $name"] instead of ["My name is "+name]
  String name = "kevin";
  print("my name is $name");
  print("The number of chracters in String Kevin is ${name.length}");


  int l = 20;
  int w = 10;

  print("The sum of $l and $w is:  ${l + w}");
  print("The area of Rectanbgle with length $l and width $w: ${l * w}");
}
