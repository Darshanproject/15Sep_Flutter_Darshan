import 'Sample2.dart';

class Person{
  void dispaly(){
    print("This is persons class");
  }
}

class Person1 extends Person {
  void dispaly1(){
    print("This is Child class First");
  }
}
class Person2 extends Person {
  void dispaly2(){
    print("This is Child  class Second");
  }
}


void main(){
  var obj = Person2();
  var obj1 = Person1();
  obj.dispaly();
  obj.dispaly2();
  obj1.dispaly();
  obj1.dispaly1();
}