import 'package:flutter/material.dart';

class Second_Screen extends StatelessWidget {
  const Second_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Text("Second Screen"),
        ),
      ),
    );
  }
}