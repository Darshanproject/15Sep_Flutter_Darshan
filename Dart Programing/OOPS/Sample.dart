class Person{
  void display(){
    print("This is parent class ");
  }
}

class Child extends Person{
  void dispaly1(){
    print("This is child class ");
  }
}

void main(){
  var obj=Child();
  obj.display();
  obj.dispaly1();
}