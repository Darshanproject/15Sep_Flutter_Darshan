import 'dart:io';

int sum(){
  var a,b;
  print("Enter your First number");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your Second number");
  b=int.parse(stdin.readLineSync()!);
  return a+b;
}

void main(){
  int ans=sum();
  print("This is your sum of two numbers $ans");
}