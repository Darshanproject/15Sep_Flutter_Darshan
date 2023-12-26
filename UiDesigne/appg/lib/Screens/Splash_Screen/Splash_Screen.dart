import 'dart:async';
import 'package:appg/Screens/Home%20Screen/bottom.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget { 
@override 
_MyHomePageState createState() => _MyHomePageState(); 
} 
class _MyHomePageState extends State<MyHomePage> { 
@override 
void initState() { 
	super.initState(); 
	Timer(Duration(seconds: 6), 
		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
														Bottom_Screen() 
														) 
									) 
		); 
} 
@override 
Widget build(BuildContext context) { 
	return Container( 
    height:750,
    width: 850,
	color: Colors.white, 
	child:Image.asset("images/google.png"),
	); 
} 
} 
