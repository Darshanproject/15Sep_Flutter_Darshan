import 'package:firebaseapp/Screens/Add.dart';
import 'package:firebaseapp/Screens/Students_List.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Students_List(),
      appBar: AppBar(
        title: Row(
          children: [
            Text("Firbase Crud"),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Add_Students()));
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}