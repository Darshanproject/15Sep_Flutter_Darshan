import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysocitey/Const/string.dart';
import 'package:mysocitey/Coustom%20Widget/Back_Screen.dart';
import 'package:mysocitey/Coustom%20Widget/our_Button.dart';
import 'package:mysocitey/Home%20View/Homepage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get_navigation/get_navigation.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Back_Screen(
      context: context.screenHeight / 2,
      child: Scaffold(
          body: Column(
            children: [
          Positioned(
            
            child:Align(alignment: Alignment.topCenter,
              child: Icon(Icons.add),),),
              Padding(
                padding: EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: email,
                  labelText: emailhint,
                ),
              ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: email,
                  labelText: emailhint,
                ),
              ),
              ),
              20.heightBox,
              SizedBox(
                width: context.screenWidth - 40,
                child: Our_Button(onpress: (){
                },title: login),
              ),
              10.heightBox,
              "Already have an accout ? ".text.make(),
              10.heightBox,
              "Need to regester first".text.make(),
              10.heightBox,
              SizedBox(
                width: context.screenWidth - 40,
                child: ElevatedButton(onPressed: (){
                  Get.to(()=>Home());
                }, child: login.text.make()),
              )
            ],
          ).box.height(context.screenHeight / 2).width(context.screenWidth-40).makeCentered().box.alignment(Alignment.topCenter).make()

      ).box.margin(EdgeInsets.only(top: 250)).roundedSM.clip(Clip.antiAlias).makeCentered(),
    );
  }
}