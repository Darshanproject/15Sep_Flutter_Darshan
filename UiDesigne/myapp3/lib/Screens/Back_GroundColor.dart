import 'package:flutter/material.dart';

class Back_Ground_Color extends StatefulWidget {
  const Back_Ground_Color({super.key});

  @override
  State<Back_Ground_Color> createState() => _Back_Ground_ColorState();
}

class _Back_Ground_ColorState extends State<Back_Ground_Color> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      // color: Colors.red,
      decoration: BoxDecoration(
        //color: Colors.amber.shade600
        gradient: LinearGradient(colors: [Colors.red,Colors.deepPurple,Colors.orange,Colors.teal],begin: Alignment.topLeft,end:Alignment.bottomRight )
      ),
    );
  }
}