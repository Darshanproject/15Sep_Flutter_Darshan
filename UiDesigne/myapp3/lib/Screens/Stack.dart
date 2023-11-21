import 'package:flutter/material.dart';

class Positions extends StatefulWidget {
  const Positions({super.key});

  @override
  State<Positions> createState() => _PositionsState();
}

class _PositionsState extends State<Positions> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: Colors.amber,
        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width,
        child:Column(
          children: [
            Positioned(
             bottom: (MediaQuery.of(context).size.height)/50,
              child: Container(
                child:  CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1563192504-36ac622196dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c3RhY2t8ZW58MHx8MHx8fDA%3D"),
                backgroundColor: Colors.blue,
                minRadius: 40,
              ),
              ),
            ),
          ],
        )
      )
    );
  }
}


/*
Stack(
      children: <Widget>[
        // Background or other widgets can be added here
      
        // Centered Image
        Positioned(
          top: 50.0,
          left: 50.0,
          
          child: Container(
            child: Column(
              children: [
                Image.network('https://images.unsplash.com/photo-1598883784877-6a11ae954c09?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHN0YWNrfGVufDB8fDB8fHww'),
                Text("Data")
              ],
            ),
          ) // Replace with the actual image path
        ),
      ],
        )


*/