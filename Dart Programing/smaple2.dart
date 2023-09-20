import 'dart:io';

void main(){
var num,num1;
print("Enter your values :");
num=int.parse(stdin.readLineSync()!);
print("Enter your second values :");
num1=int.parse(stdin.readLineSync()!);
print("This is your number 1 $num1 + number 2 $num");
print(num+num1);

}