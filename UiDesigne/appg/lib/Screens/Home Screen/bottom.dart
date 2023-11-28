

import 'package:appg/Screens/Home%20Screen/Home_Screen.dart';
import 'package:appg/Screens/Home%20Screen/Second_Screen.dart';
import 'package:appg/Screens/Home%20Screen/Third_Screen.dart';
import 'package:flutter/material.dart';

class Bottom_Screen extends StatefulWidget {
  const Bottom_Screen({super.key});

  @override
  State<Bottom_Screen> createState() => _Bottom_ScreenState();
}

class _Bottom_ScreenState extends State<Bottom_Screen> {
  int _Selctedindex=0;
  List Screenlist=[
    Home_Screen(),
    Second_Screen(),
    Third_Screen(),
  ];
  void _ontap(int index){
    setState(() {
      _Selctedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child:  Screenlist.elementAt(_Selctedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.gamepad),
        label: "Home"
        ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),
        label: "Home"
        ),
      ],
      currentIndex: _Selctedindex,
      onTap: _ontap,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.blue,
      ),
      
    );
  }
}