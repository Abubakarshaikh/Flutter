// objective
// 1. Define a Function
// 2. Pass parameters To a Function
// 3. Return value From Function
// 4. Test that By default a function Return Null

void main(){
  findPerimeter(2, 4);

  int rectArea = getArea(10, 5);
  print("The area is $rectArea");
}

void findPerimeter(int length, int breath){
  int perimeter = 2 * (length + breath);
  print("The perimeter is $perimeter");
}

// Return value from Function
int getArea(int length, int breath){
  int area = length * breath;
  return area;
}
