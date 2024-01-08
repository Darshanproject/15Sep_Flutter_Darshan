
import 'package:flutter/material.dart';

Widget Back_Screen ({context,child}){
  return Container(
    height: context,
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://w0.peakpx.com/wallpaper/123/910/HD-wallpaper-nexus-colorful-abstract-android-apple-color-colors-iphone-thumbnail.jpg"),fit: BoxFit.cover)
    ),
    child: child,
  );
}