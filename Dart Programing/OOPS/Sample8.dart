class Person{
  void dispaly(){
    print("Human can wlak");
  }
}

class Child extends Person{
  void dispaly(){
    print("A boy can run");
  }
}

void main(){
  var obj=Child();
  obj.dispaly();
}