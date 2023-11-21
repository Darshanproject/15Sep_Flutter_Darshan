import 'package:flutter/material.dart';
import 'package:myapp3/Screens/Back_Ground.dart';

class Gllfbuilder extends StatefulWidget {
  const Gllfbuilder({super.key});

  @override
  State<Gllfbuilder> createState() => _GllfbuilderState();
}

class _GllfbuilderState extends State<Gllfbuilder> {
  double size=18;
    void changesize(){
              setState(() {
                size+=2;
              });
            }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: InkWell(
          // onTap: () {
          //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Back_Ground()));
          // },
          onDoubleTap: changesize,
          
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                      width: 2,
                      color: Colors.blue
                    ),
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: Text("Data",style: TextStyle(fontSize: size),),
                )
              ],
            ),
          ),
        ),
    );
  }
}