import 'package:flutter/material.dart';

class Third_Screen extends StatelessWidget {
  const Third_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Text("Third Screen"),
        ),
      ),
    );
  }
}