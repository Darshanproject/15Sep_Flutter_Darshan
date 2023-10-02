

class Person{
  var age;
  var name;
  void setName(String name){
    this.name=name;
  }
  void setAge(int age){
    this.age=age;
  }
  String getName(){
    return name;
  }
  int  getAge(){
    return age;
  }
}


void main(){
  var obj=Person();
  obj.setAge(28);
  obj.setName("Harsh");
  print(obj.getName());
  print(obj.getAge());
}