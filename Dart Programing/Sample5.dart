import 'dart:io';
void main(){
  var num,num1;
  print("Enter your numbers :");
  num=int.parse(stdin.readLineSync()!);
  if(num>15){
    print("You have bigger number");
  }else{
    print("You have samller numbers");
  }
}