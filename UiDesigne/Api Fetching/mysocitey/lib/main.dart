import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysocitey/Auth_Screen/Login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home: Login_Screen(),
    );
  }
}