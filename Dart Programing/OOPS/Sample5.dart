class grandfather{
void display(){
  print("This is my grand father's class");
}
}
class parent extends grandfather{
  void dispaly1(){
    print("This is my parent class");
  }
}

class child extends parent{
  void dispaly2(){
    print("This is my child class");
  }
}

void main(){
  var obj =child();
  obj.display();
  obj.dispaly1();
  obj.dispaly2();
}