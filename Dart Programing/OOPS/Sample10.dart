import 'dart:io';

void main(){
  var name="ANKIT";
  // print("Enter your name here :");
  // name=stdin.readLineSync()!;
  
  // print(name.toLowerCase());
   print(name.replaceRange(2, 4, 'M'));
  print(name.trimLeft());
}