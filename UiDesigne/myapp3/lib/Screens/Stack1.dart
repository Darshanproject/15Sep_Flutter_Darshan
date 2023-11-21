import 'package:flutter/material.dart';

class MyOverriden extends StatelessWidget {
  const MyOverriden({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICesaINRUIy9MqHzu7ElonJlXb5in28YAJQ&usqp=CAU")),
          Positioned(
            top: 80.0,
            right: 160.0,
            child:Container(
              child: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            ) )
        ],
      ),
    );
  }
}