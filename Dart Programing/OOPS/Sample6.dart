class A{
void dispaly(){
  print("This is my main  class");
}
}
class B extends A{
  void dispaly1(){
    print("This is my sub class 1");
  }
}
class C extends A{
  void dispaly2(){
    print("This is my sub class 2");
  }
}
class D extends A {
  void dispaly3(){
    print("This is my sub class 3");
  }
}

void main(){
  var obj=B();
  var obj1=C();
  var obj2=D();
  obj.dispaly();
  obj.dispaly1();
  obj1.dispaly();
  obj1.dispaly2();
  obj2.dispaly();
  obj2.dispaly3();
}