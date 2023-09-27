import 'dart:io';

int sum(int a,int b){
  return a+b;
}
void main(){
  var a,b;
  int ans=sum(a, b);
  print("Enter your First numbers :");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your Second numbers :");
  b=int.parse(stdin.readLineSync()!);
  print("This is your sum of two numbers $ans");
}