// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:myapp3/Screens/Back_Ground.dart';
import 'package:myapp3/Screens/Back_GroundColor.dart';
import 'package:myapp3/Screens/Button.dart';
import 'package:myapp3/Screens/Buttons_2.dart';
import 'package:myapp3/Screens/ColorchnagingEvents.dart';
import 'package:myapp3/Screens/Form.dart';
import 'package:myapp3/Screens/Grid2.dart';
import 'package:myapp3/Screens/Home_Page.dart';
import 'package:myapp3/Screens/Laksxman.dart';
import 'package:myapp3/Screens/Stack.dart';
import 'package:myapp3/Screens/Stack1.dart';
import 'package:myapp3/Screens/StackScreen.dart';
import 'package:myapp3/Screens/Stackscreen1.dart';
import 'package:myapp3/Screens/Tabbar_Screen.dart';
import 'package:myapp3/Screens/TextFields.dart';
import 'package:myapp3/Screens/Third.dart';
import 'package:myapp3/Screens/gridview.dart';
import 'package:myapp3/Screens/gridviewbuilder.dart';
import 'package:myapp3/Screens/hello.dart';
import 'package:myapp3/Screens/validationm.dart';

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
      home:Form_Scree()
    );
  }
}
