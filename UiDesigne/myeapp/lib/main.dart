import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Auth/Splash_Screen.dart';
import 'package:myeapp/consts/consts.dart';
void main(){
  runApp(MyApp()); 
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: darkFontGrey,
          
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent
        ),
        fontFamily: regular
      ),
      home: Splash_Screen(),
    );
  }
}