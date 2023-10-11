import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myapp2/Screen/Second_page.dart';
import 'package:myapp2/Screen/ThirdScreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Third_Screen(),
    );
  }
}