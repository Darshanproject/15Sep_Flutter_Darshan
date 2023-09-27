/*
switch(exp){
case 1:
  print();
  break;
default :
  print();
  break;
}
*/
import 'dart:io';

void main(){
  var apl;
  print("Enter your day");
  apl=int.parse(stdin.readLineSync()!);
  switch(apl){
    case 1:
    print("Monday");
    break;
    case 2:
    print("Tuesday");
    break;
    case 3:
    print("Wednesday");
    break;
    case 4:
    print("Thursday");
    break;
    case 5:
    print("Friday");
    break;
    case 6:
    print("Saturday");
    break;
    case 7:
    print("Sunday");
    break;
    default :
    print("Invalid Input");
    break;
  }
}
