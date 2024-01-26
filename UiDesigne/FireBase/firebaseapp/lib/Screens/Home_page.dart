import 'package:firebaseapp/Screens/Add.dart';
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
      body: ListView(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: CircleAvatar(
                  minRadius: 25,
                  backgroundColor: Colors.purple[100],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Vansh"),
                    Text("vansh@gmail.com")
                  ],
                ),
              )
            ],
            ),
          )
        ],
      ),
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