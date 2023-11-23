import 'package:flutter/material.dart';

class Screen_Stack extends StatelessWidget {
  const Screen_Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Container(
            decoration: BoxDecoration(
              color: Colors.amber
            ),
          )),
          Positioned(
            top: 250,
            child: 
          
          Container(
            width:1020,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 5,
                color: Colors.black
              ),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
            ),
            child: Column(
              children: [
                  Card(
                    child: Text("Data")
                  ),
                  SizedBox(height: 25,),
                  Card(
                    elevation: 5,
                    child: Container(
                      child: Text("Data")),
                  ),
              ],
            ),
          )
          ),
          Positioned(
            top: 230,
            left: 480,
            child: CircleAvatar(
            backgroundColor: Colors.blue,
          ))
        ],
      ),
    );
  }
}