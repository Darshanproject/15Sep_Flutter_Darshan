import 'package:flutter/material.dart';

class Button_my extends StatefulWidget {
  const Button_my({super.key});

  @override
  State<Button_my> createState() => _Button_myState();
}

class _Button_myState extends State<Button_my> {
  double textSize=24;
  void Changesize(){
      setState(() {
        textSize +=2;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text("Hello World",style: TextStyle(fontSize: textSize),),
            ElevatedButton(onPressed: (){
                setState(() {
                  textSize-=2;
                });
            }, child: Text("-")),
             ElevatedButton(onPressed: (){
                  Changesize();
            }, child: Text("+")),
            // TextButton(onPressed: (){}, child: Icon(Icons.edit)),
            // IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
            // MaterialButton(onPressed: (){} ,child: Text("Submit"),color: Colors.amber,height: 40,minWidth: MediaQuery.of(context).size.width,shape: Border.all(color: Colors.lime,width: 1,style: BorderStyle.solid,),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(onPressed: (){} ,child: Text("Add"),),
    );
  }
}