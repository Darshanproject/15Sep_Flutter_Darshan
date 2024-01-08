import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
String? stringresponse;
Map? mapresposne;
Map? dataresposne;
class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
     Future apicalling() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if(response.statusCode == 200){
      stringresponse = response.body;
      mapresposne = json.decode(stringresponse.toString());
      dataresposne = mapresposne!["data"];
    }else if(response.statusCode == 400){
        return Container(
          color: Colors.red,
            child: Text("Page Not Found",style: TextStyle(fontSize: 42,color: Colors.white),),

        );
    }
  }
  @override
  void initState() {
    apicalling();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api "),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(child: Container(
        color: Colors.blue,
        height: 200,
        width: 300,
        child: Align(
          alignment: Alignment.center,
          // ignore: prefer_const_constructors
          child: Text(dataresposne!['email'].toString(),style: TextStyle(
            fontSize: 24,fontWeight: FontWeight.w600
          ),)),
      )),
    );
  }
}