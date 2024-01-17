import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
class Update_Screen extends StatefulWidget {
   Update_Screen({super.key,required this.name,required this.email});
 final String name;
 final String email;
  

  @override
  State<Update_Screen> createState() => _Update_ScreenState();
}

class _Update_ScreenState extends State<Update_Screen> {
  TextEditingController cname = TextEditingController(text: widget.name);

  TextEditingController cemail =TextEditingController();

   Future<void> updateData() async {
    final response = await http.put(
      Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/update.php'), // Replace with your API endpoint
      body: jsonEncode({'name': cname,'emai':cemail}),
    );
    if (response.statusCode == 200) {
        print("Data Updated Successfully");
    }else{
      print("Failed to update data");
    }
   }
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
              controller: cname,
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
              controller: cemail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
             ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:  10,vertical: 20),
              child: ElevatedButton(onPressed: (){},child:widget.email == null && widget.name == null ? Text("Edit"):Text("Save"),),
              )
        ],
      ),
    );
  }
}