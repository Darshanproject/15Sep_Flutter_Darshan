import 'package:flutter/material.dart';
import 'package:myeapp/consts/colors.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: fontGrey,
    );
  }
}