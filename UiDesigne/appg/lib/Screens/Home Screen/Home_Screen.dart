import 'package:appg/Const/Color.dart';
import 'package:appg/Const/String.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              title: name.text.color(Colors.white).make(),
              background: Image.network("https://images.unsplash.com/photo-1533162507191-d90c625b2640?w=700&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHN0YWNrfGVufDB8fDB8fHww",fit: BoxFit.cover,),
            ),
            
          ),
          SliverFixedExtentList(delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: "Items $index".text.make(),
            );
          } ,
          childCount: 20 
          ), itemExtent: 50.0
          
          )
        ],
      )
    );
  }
}