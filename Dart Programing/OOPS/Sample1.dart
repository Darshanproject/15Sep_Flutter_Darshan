/*
syntax:
class  class_name{
  memeber function
}
void main(){
  class_name object;
}

*/
class Person{  //class
  void display(){   //memeber function 
    print("This is your person class");
  }
}

void main(){
 var obj = Person();//object creation
  obj.display(); //calling method thoru object
}