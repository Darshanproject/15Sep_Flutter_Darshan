import 'dart:math';

import 'package:flutter/material.dart';

class Form_Screen extends StatefulWidget {
  const Form_Screen({super.key});

  @override
  State<Form_Screen> createState() => _Form_ScreenState();
}

class _Form_ScreenState extends State<Form_Screen> {
  Color color = Colors.blue;
 
  Color Mychangecolor(){
 final Random random=Random();
    return Color.fromARGB(255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256));
      // ignore: dead_code
      color =Mychangecolor(); 
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: color,
        height: 250,
        width: 250,
        child: ElevatedButton(onPressed: (){
          setState(() {
            Mychangecolor();
          });
        }, child: Text("Change")),
      ),
    );
  }
}