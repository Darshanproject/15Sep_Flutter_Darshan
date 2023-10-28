import 'dart:math';

import 'package:flutter/material.dart';

class ColorChnaging extends StatefulWidget {
  const ColorChnaging({super.key});

  @override
  State<ColorChnaging> createState() => _ColorChnagingState();
}

class _ColorChnagingState extends State<ColorChnaging> {
  Color _colorChnage=Colors.blue;
  Color _getrandomColor (){
    final Random random=Random();
    return Color.fromARGB(255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256)
    );
  }
  void _Chnage(){
    setState(() {
      _colorChnage=_getrandomColor();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: InkWell(
            onTap: _Chnage,
            child: Column(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Hello"),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)),),
                Container(
                  decoration: BoxDecoration(
                  color: _colorChnage,

                  ),

                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: 25,

                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Text("Click mE to Change Color",style: TextStyle(color: Colors.white),)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}