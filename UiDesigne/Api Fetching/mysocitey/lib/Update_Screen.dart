import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Update_Screen extends StatelessWidget {
   Update_Screen({super.key,required this.name,required this.email});
 
  TextEditingController name = TextEditingController();

  TextEditingController email =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Update Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal:  10 ,vertical: 20),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
             ),
             Padding(
            padding:EdgeInsets.symmetric(horizontal:  10 ,vertical: 20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
             ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:  10,vertical: 20),
              child: ElevatedButton(onPressed: (){},child:email == null && name == null ? Text("Edit"):Text("Save"),),
              )
        ],
      ),
    );
  }
}