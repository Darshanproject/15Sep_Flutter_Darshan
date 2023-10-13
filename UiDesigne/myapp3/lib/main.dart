import 'package:flutter/material.dart';
import 'package:myapp3/Screens/Home_Page.dart';
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
    return  MaterialApp(
      home:Third()

    );
  }
}