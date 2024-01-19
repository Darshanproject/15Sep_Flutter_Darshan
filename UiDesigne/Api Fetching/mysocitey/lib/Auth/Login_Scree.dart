import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysocitey/Auth/Reg_Screen.dart';
import 'package:mysocitey/View.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  bool choice =  true;
  Future login() async {
    var url = 'http://flutterwala.mooo.com/login.php';
    var response = await http.post(Uri.parse(url),body: {
      'email':username.text.toString(),
      'password': password.text.toString()
    });
    var data =jsonDecode(response.body);
    if (response.statusCode == 200) {
        if (data == "Success") {
    
         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Sucessfully "),backgroundColor: Colors.green,));
      print("SuccessFully Logedin");
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page1()));
    }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Failed"),backgroundColor: Colors.red,));
        print("Fail 2 ");
    }
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red,Colors.blue,Colors.purple,Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Column(
                
                  children: [
                    TextField(
                      controller: username,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "Username Email or Phone number"
                      ),
                    ),
                    20.heightBox,
                    TextField(
                      obscureText: choice,
                      controller: password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                        ),
                        hintText: "********",
                        labelText: "Password",
                        suffixIcon: choice == true ? IconButton(onPressed: (){
                         setState(() {
                            choice = false;
                         });
                        }, icon: Icon(Icons.visibility_off)):IconButton(onPressed: (){
                          setState(() {
                            choice = true;
                          });
                        }, icon: Icon(Icons.visibility))
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(color: Colors.blue),))
                      ],
                    ),
                    SizedBox(
                      width: context.screenWidth - 40,
                      child: ElevatedButton(onPressed: ()=>login(), child: Text("Login")),
                    ),
                    5.heightBox,
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Reg_Screen()));
                    }, child: Text("Create an Account ?",style: TextStyle(color: Colors.blue),))
                  ],
                ),
            ).box.white.height(context.screenHeight / 2).margin(EdgeInsets.symmetric(horizontal: 10 , vertical: 25)).padding(EdgeInsets.symmetric(
              horizontal: 20,vertical: 10
            )).rounded.clip(Clip.antiAlias).makeCentered()
          ],
        ),
      ),
    );
  }
}