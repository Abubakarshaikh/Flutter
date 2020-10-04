// optional named parameters

void main(){
  findVolume(10, breadth: 5, height: 20);
  print(" ");

  // Sequence doesn't matter in Named Parameter
  findVolume(10, height: 5, breadth: 20);

}

void findVolume(int length,{int breadth, int height}) {

  print("Length is $length");
  print("Breadth is $breadth");
  print("Height is $height");

  print("Volume is ${length * breadth * height}");
}