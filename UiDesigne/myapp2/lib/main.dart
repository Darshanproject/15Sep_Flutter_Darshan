import 'package:flutter/material.dart';
import 'package:myapp2/Screen/Second_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Second_Screen(),
    );
  }
}