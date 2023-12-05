

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Form_Screen(),
    );
  }
}

class Form_Screen extends StatefulWidget {
  const Form_Screen({super.key});

  @override
  State<Form_Screen> createState() => _Form_ScreenState();
}
GlobalKey _globalKey =GlobalKey();
TextEditingController name = TextEditingController();
TextEditingController surname = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();

class _Form_ScreenState extends State<Form_Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: _globalKey,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter vaild details";
                      }else{
                          return null;
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      labelText: "name",
                      hintText: "Name"
                    ),
                  ),
                                 TextFormField(
                                  controller: surname,
                                  validator: (value) {
                                  if(value!.isEmpty){
                        return "Please enter vaild details";
                      }else{
                          return null;
                      }
                                  },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      labelText: "Surname",
                      hintText: "Surname"
                    ),
                  ),
                                  TextFormField(
                                    controller: email,
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "Please enter valid email";
                                      }
                                      // else if(){

                                      // }
                                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      labelText: "Email",
                      hintText: "Email"
                    ),
                  ),
                                  TextFormField(
      
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      labelText: "Password",
                      hintText: "Password"
                    ),
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text("Login")),
                  Text("Hello ,",style: GoogleFonts.ephesis(color: Colors.amber,fontSize: 25),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}