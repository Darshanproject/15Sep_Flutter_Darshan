import 'dart:io';

class Person{
  Person(int marks,int num){
    print("This is your sum of two numbers ");
    print(num+marks);
  }
}

void main(){
  var a,b;  
  print("Enter your first number here :");
  a=int.parse(stdin.readLineSync()!);
  print("Enter your Second number here :");
  b=int.parse(stdin.readLineSync()!);
  var obj=Person(a,b);
 
}