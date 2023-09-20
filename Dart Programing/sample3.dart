import 'dart:io';
void main(){
  var num,num1;
  print("Enter your num 1");
  num=int.parse(stdin.readLineSync()!);
  print("Enter your second number :");
  num1=int.parse(stdin.readLineSync()!);
  (num>num1)?print("Num is bigger then num 2"):print("Num 1 is bigger then num");
}