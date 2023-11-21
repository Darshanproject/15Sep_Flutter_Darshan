import 'package:flutter/material.dart';

class ScreenTask extends StatelessWidget {
  const ScreenTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          // Positioned.fill(child: Container(
          //   decoration: BoxDecoration(
          //     color: Colors.white
          //   ),
          // )),
          // Positioned(child: 
          // Container(
          //   margin: EdgeInsets.all(10),
          //   height: 550,
          //   width: 450,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     color: Colors.red[500]
          //   ),
          // )
          // ),
          // Positioned(
          //   top: 20.0,
          //   right: 50.0,
          //   child: Container(
          //     height: 120,
          //     width: 250,
          //   decoration: BoxDecoration(
          //     color: Colors.blue
          //   ),
          // )),
          Positioned(child:Row(
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:NetworkImage("https://images.unsplash.com/photo-1563192504-36ac622196dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3RhY2t8ZW58MHx8MHx8fDA%3D"),fit: BoxFit.cover)
                ),
                 
              )
            ],
          ) ),
          Positioned(
            left: 170,
            bottom: 0,
            child: Container(
              height: 30,
              width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow
            ),
            child: Center(child: Text("1",style: TextStyle(color: Colors.white),)),
          )),
        ],
      ),
    );
  }
}