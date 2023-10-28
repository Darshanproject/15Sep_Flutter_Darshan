import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp3/Const/String.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  double textSize=18;
  void Display(){
    setState(() {
      textSize+=2;
    });
  }
  void des(){
    setState(() {
      textSize-=2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Elevated Buttons"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello User ",style: TextStyle(fontSize: textSize),),
            ElevatedButton(onPressed: (){
                 Display();
            }, child: Text("Click"),style: ButtonStyle(maximumSize: MaterialStateProperty.all(Size(350, 40))),),
            Container(
              margin: EdgeInsets.only(left: 10,bottom: 5,right: 5,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: (){}, child: Text("Forgot Password?")),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                ],
              ),
            ),
                IconButton(onPressed: (){
                  des();
                }, icon: Icon(Icons.delete))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Text("Add"),),
    );
  }
}