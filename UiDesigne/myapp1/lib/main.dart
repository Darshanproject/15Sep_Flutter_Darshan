import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("aPP bAR"),
        ),
        // body: Container(
        // //  margin: EdgeInsets.all(12),
        // padding: EdgeInsets.all(12),
        //   color: Colors.amber,
        //   child: Center(child:Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("Col 1",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        //       Text("Col 2"),
        //       Container(
        //         child: Row(
        //          // mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             Text("Row 1"),
        //             Text("Row 2")
        //           ],
        //         ),
        //       )
        //     ],
        //   )),
        // ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                 decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red
            )
          ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8),
                       decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red
            )
          ),
                      child: Column(
                        children: [
                          Text("Hello wolrd altu faltu"),
                    Text("Hello wolrd altu faltu"),
                        ],
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.all(8),
                       decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.red
            )
          ),
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Text("Vansh")
                  ],
                ),
              )
                  ],
                ),
              ),
             
            ],
          ),
        ),
      )
    );
  }
}