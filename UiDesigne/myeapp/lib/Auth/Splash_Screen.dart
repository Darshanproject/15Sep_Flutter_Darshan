import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myeapp/Auth/Login_Screen.dart';
import 'package:myeapp/Coustom%20Widgets/Apllo_Widget.dart';
import 'package:myeapp/Coustom%20Widgets/Bg_Screen.dart';
import 'package:myeapp/consts/colors.dart';
import 'package:myeapp/consts/consts.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  chnageScreen(){
    Future.delayed(Duration(milliseconds: 300),(){
        Get.to(()=>Login_Screen());
    });
  }
  @override
  void initState() {
    chnageScreen();
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: redColor,
      body: BG_widget(
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg,width: 300,),
              ),
              20.heightBox,
              Apllo_Widget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).white.make(),
              5.heightBox,
              Spacer(),
              credits.text.white.fontFamily(semibold).make(),
              30.heightBox, 
              appversion.text.white.make()
            ],
          ),
        ),
      ),
    );
  }
}