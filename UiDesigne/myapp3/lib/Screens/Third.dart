import 'package:flutter/material.dart';
import 'package:myapp3/Screens/Home_Page.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
      ),
        floatingActionButton: FloatingActionButton(
          //  onPressed: ()=>
          //  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page())),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page()));
        },
        
        child: Text("Add"),),
      );
  }
}