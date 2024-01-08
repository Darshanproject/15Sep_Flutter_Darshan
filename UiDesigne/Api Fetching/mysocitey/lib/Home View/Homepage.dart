import 'package:flutter/material.dart';
import 'package:mysocitey/Const/color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Container(
        color: pink,
      ),
    );
  }
}