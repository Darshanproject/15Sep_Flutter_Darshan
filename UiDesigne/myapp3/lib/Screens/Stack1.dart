import 'package:flutter/material.dart';

class MyOverriden extends StatelessWidget {
  const MyOverriden({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRICesaINRUIy9MqHzu7ElonJlXb5in28YAJQ&usqp=CAU",fit: BoxFit.cover,)),
          Positioned(
            top: 290.0,
            right: 660.0,
            child:Container(
              child: CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.amber,
              ),
            ) )
        ],
      ),
    );
  }
}