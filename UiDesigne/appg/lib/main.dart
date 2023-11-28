// import 'dart:async';
// import 'dart:js';

// import 'package:appg/Screens/Home%20Screen/Home_Screen.dart';
// import 'package:appg/Screens/Home%20Screen/bottom.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/get_navigation.dart';

// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return  GetMaterialApp(
        
//       home: Bottom_Screen(),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
          title:'Splash Screen',
          theme: ThemeData(
              primarySwatch: Colors.green,
          ),
        home:Splash(),
        debugShowCheckedModeBanner: false,
      );
  }

}

class Splash extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return SplashScreen
      (
          seconds:6,
          navigateAfterSeconds: new SecondScreen(),
          title:Text('MySplashApp',textScaleFactor: 2,),
          image:Image.network('https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
          loadingText: Text("Loading"),
          photoSize: 100.0,
          loaderColor: Colors.blue,

      );
  }

}
class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(
              title:Text('My Data')
          ),
          body:Center(
              child: Text("Welcome"),
          )
      );
  }

}
