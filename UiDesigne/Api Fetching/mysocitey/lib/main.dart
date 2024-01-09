import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mysocitey/View.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        home: View_Screen(),
          );
  }
}