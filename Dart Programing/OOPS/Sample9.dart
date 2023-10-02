import 'Sample5.dart';

class Parent{
  int number1;
  int number2;
  Parent(this.number1,this.number2);
}

class Child extends Parent{
  Child(int number1,int number2):super(number1,number2);
  int add(){
    return super.number1+super.number2;
  }
}
void main()
{
  var obj =Child(25, 25);
  int sum=obj.add();
  print("Sum of two numbers is $sum");
}