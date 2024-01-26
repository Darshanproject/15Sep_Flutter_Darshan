

import 'package:firebaseapp/Screens/Home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Add_Students extends StatefulWidget {
  const Add_Students({super.key});

  @override
  State<Add_Students> createState() => _Add_StudentsState();
}

class _Add_StudentsState extends State<Add_Students> {
  final _formkey = GlobalKey<FormState>();
  var name = "";
  var email = "";
  var surname = "";
  var pass = "";
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final surnamecontroller = TextEditingController();

  void dispose(){
    namecontroller.dispose();
    passcontroller.dispose();
    emailcontroller.dispose();
    surnamecontroller.dispose();  
  }
  void clear(){
    namecontroller.clear();
    surnamecontroller.clear();
    emailcontroller.clear();
    passcontroller.clear();
  }
CollectionReference    students = FirebaseFirestore.instance.collection('students');
 Future<void> addusers(){
      return students.add({'name':name,'surname':surname,'email':email,'password':pass})
      .then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added Successfully"),backgroundColor: Colors.green,)))
      .catchError((e)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something went Wrong $e"),backgroundColor: Colors.red,)))
      ;
    }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: namecontroller,
                validator: (value) {
                  if (value != null && value.isEmpty) {
                      return 'Please enter your name here ';
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name"
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: surnamecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "surname"
                ),
              ),
                            SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Example@gmail.com"
                ),
              ),
                            SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: passcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "password"
                ),
              ),
                            SizedBox(
                height: 20,
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(onPressed: (){
                  if (_formkey.currentState!.validate()) {
                    setState(() {
                      name = namecontroller.text;
                      surname = surnamecontroller.text;
                      email = emailcontroller.text;
                      pass = passcontroller.text;
                      addusers();
                      clear();
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page()));
                    });
                  }
                  
                  },child: Text("Add Students"), ),
              )
            ],
          ),
        )),
        appBar: AppBar(
          title: Text("Add Students"),
          centerTitle: true,
        ),
    );
  }
}