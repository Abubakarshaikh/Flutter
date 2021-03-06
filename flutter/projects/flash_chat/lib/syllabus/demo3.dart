// Learn to use Dart mixins to extend class functionality
// Mixins are a way of reusing a class’s code in multiple class hierarchies.

// void main(){
//   // Fish().move();
//   Duck().move();
// }


// class Animal{
//   void move(){
//     print("Change possition");
//   }
// }

// class Fish extends Animal{
//   void move(){
//     print("Fish Swimming");
//   }
// }

// class Bird extends Animal{
//   void move(){
//     print("Bird Flying");
//   }
// }


// // Swimming as well Flying

// // 1. Only Flying
// // class Duck extends Bird{}

// // 2. Only Swimmg
// // class Duck extends Fish{}

// // class
// mixin CanFly {
//   void move(){
//     print("Bird Flying");
//   }
// }

// mixin CanSwimming {
//   void move(){
//     print("Fish Swimmig");
//   }
// }

// class Duck extends Animal with CanFly , CanSwimming {
//   void move(){
//     print("Duck Swimmig");
//   }
// }



// void main(){
//   Omnivore().plants();
// }
// class Animal {
//   void food(){
//     print("eat Food");
//   }
// }

// class Herbivore extends Animal{
//   void plants(){
//     print("eats Plants");
//   }
// }

// class Carnivore  extends Animal{
//   void meats(){
//     print("eats Meats");
//   }
// }

// class Omnivore extends Herbivore{
//   @override
//   void plants();
// }




void main(){
  Omnivore().plants();
  Omnivore().meats();

}
class Animal {
  void food(){
    print("eat Food");
  }
}

mixin Herbivore{
  void plants(){
    print("eats Plants");
  }
}

mixin Carnivore {
  void meats(){
    print("eats Meats");
  }
}

class Omnivore with Herbivore, Carnivore{
   void plants();
   void meats();
}