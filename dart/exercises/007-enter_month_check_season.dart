import 'dart:io';

void main(){
  print("Enter Month: ");
  var season = stdin.readLineSync();

  switch (season){
    case "january":
    print("January is: WINTER");
    break;

    case "feburay":
    print("febuary is: SPRING");
    break;
    
    case "march":
    print("march is: SPRING");
    break;
    
    case "april":
    print("april is: SPRING");
    break;
    
    case "may":
    print("may is: SUMMER");
    break;
    
    case "june":
    print("june is: SUMMER");
    break;
    
    case "july":
    print("july is: SUMMER");
    break;
    
    case "august":
    print("august is: AUTUMN");
    break;
    
    case "september":
    print("september is: AUTUMN");
    break;
    
    case "october":
    print("october is: AUTUMN");
    break;

    case "november":
    print("november is: WINTER");
    break;
    case "december":
    print("december is: WINTER");
    break;

    default:
    print("No seasn");
  }
}