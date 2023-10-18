// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myapp3/Screens/Back_Ground.dart';
import 'package:myapp3/Screens/Back_GroundColor.dart';
import 'package:myapp3/Screens/Home_Page.dart';
import 'package:myapp3/Screens/TextFields.dart';
import 'package:myapp3/Screens/Third.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Back_Ground_Color()

    );
  }
}