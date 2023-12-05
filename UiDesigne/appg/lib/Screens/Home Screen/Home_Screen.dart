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
  List images =[
    "https://images.unsplash.com/photo-1531956759688-e71cc2586e34?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1664392104299-cb8ace591863?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3RhY2t8ZW58MHx8MHx8fDA%3D",
    "https://plus.unsplash.com/premium_photo-1684534125372-10d4c47c825f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c3RhY2t8ZW58MHx8MHx8fDA%3D"
  ];
  List text=["Image1 ","Image 2","Image 3"];
  @override
  Widget build(BuildContext context) {
    return  Container(

      child: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context ,index){
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Details_Screen(text: text[index],images: [images[index]],)));
          },
          child: Card(
            elevation: 20,
            child: Column(
              children: [
                Container(
                  child: Image.network(images[index]),
                ),
                Container(
                  child: Text(text[index]),
                )
              ],
            )),
        );
        
      })
    );
  }
}


class Details_Screen extends StatelessWidget {
  Details_Screen({required this.text,required this.images });
 
  String text;
  final List<String> images; 

  //  final Image  images ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Card(
        color: Colors.green,
        elevation: 10,
        child: Container(
          margin: EdgeInsets.all(55),
          child:Column(
            children: [
             Image.network(images[0]),
              Text(text)
            ],
          ) ,
        ),
      ),
    );
  }
}