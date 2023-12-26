import 'package:flutter/material.dart';
import 'package:myeapp/consts/consts.dart';

Widget BG_widget({Widget? child}){
  return Container(
    
    decoration: BoxDecoration(
      color: redColor,
      image: DecorationImage(image: AssetImage(imgBackground),fit: BoxFit.cover)
    ),
  child: child,
  );
}