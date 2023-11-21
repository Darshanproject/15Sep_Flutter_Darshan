import 'package:flutter/material.dart';
import 'package:myapp3/Const/Color.dart';
import 'package:myapp3/Const/String.dart';
import 'package:myapp3/Const/images.dart';
import 'package:myapp3/Screens/Screens.dart';

class TextFileds extends StatefulWidget {
  const TextFileds({super.key});

  @override
  State<TextFileds> createState() => _TextFiledsState();
}

class _TextFiledsState extends State<TextFileds> {
  TextEditingController Fname=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Text Files Pro")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: yellow,
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // TextField(),
            SizedBox(
              height: 24,
            ),
            TextField(
              controller: Fname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24)
                ),
                // hintText: name,
                // labelText: name,
                // prefixIcon: IconButton(onPressed: (){
                //   print("Button has been Clicked");
                // }, icon: Icon(Icons.edit)),
              //  suffixIcon: Icon(Icons.delete)
              ),
            ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     labelText: age,
            //     hintText: age
            //   ),

            // ),
            // Image.network(img1),
            // Image.asset(img2)
            SizedBox(
              height: 50,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Screens(Fname: Fname.text.toString())));
            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}