// optional default parameters

void main(){
  // Default value comes into action
  findVolume(40);
  print("");

  // Overrides the old value with new one
  findVolume(10, breadth:30, height:10);
  print("");
  
  // Making use of Named Parameters with Default values
  findVolume(10, breadth:30, height:5);
}

void findVolume(int length, {int breadth = 2, int height = 20}){
  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
}