import 'package:flutter/material.dart';

class iknow extends StatefulWidget {
  const iknow({super.key});

  @override
  State<iknow> createState() => _iknowState();
}

class _iknowState extends State<iknow> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("data:image/jpeg;base64,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"))
        ),
      ),
    );
  }
}