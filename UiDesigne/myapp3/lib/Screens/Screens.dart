import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  Screens({ required this.Fname});
  var Fname;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Go Back"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello $Fname Welcome to our app ",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}