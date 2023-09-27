import 'dart:io';

void main(){
   var num;
  print("Enter your numbers ");
  num=int.parse(stdin.readLineSync()!);
  if(num>0 && num<100){
    if(num>90 && num<100){
    print("A Grade!!!");
  }else if(num>80 && num<=90){
    print("B Grade!!");
  }else if(num>60 && num<=80){
    print("C Grade !");
  }else if(num>50 && num<=60){
    print("D Grade");
  }else if(num>35 && num<50){
    print("Just Pass");
  }else if(num>0 && num<=35){
    print("Fail");
  }
  }else{
    print("Invalid Input");
  }
}