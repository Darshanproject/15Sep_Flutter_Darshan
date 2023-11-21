import 'package:flutter/material.dart';

class Grid_Class extends StatefulWidget {
  const Grid_Class({super.key});

  @override
  State<Grid_Class> createState() => _Grid_ClassState();
}

class _Grid_ClassState extends State<Grid_Class> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GridView(
        
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          
          ),
          children: [
            Container(
              color: Colors.green[100],
              child: Text("1"),
            ),
            Container(
              color: Colors.green[200],
              child: Text("2"),
            ),
            Container(
              color: Colors.green[300],
              child: Text("3"),
            ),
            Container(
              color: Colors.green[400],
              child: Text("4"),
            ),
            Container(
              color: Colors.green[500],
              child: Text("5"),
            ),
            Container(
              color: Colors.green[600],
              child: Text("6"),
            )
          ],
          ),
    );
  }
}