import 'package:flutter/material.dart';
import 'package:mysocitey/Auth/Login_Scree.dart';
import 'package:mysocitey/Auth/Reg_Screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Screen(),
    );
  }
}