

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  final String id;
  final String name;
  final String email;
  final String surname;
  final String password;
  UpdateStudentPage({Key? key, required this.id,required this.name,required this.surname,required this.email,required this.password}) : super(key: key);

  @override
  _UpdateStudentPageState createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _formKey = GlobalKey<FormState>();
    var namec = TextEditingController();
    var surnamec = TextEditingController();
    var emailc = TextEditingController();
    var passwordc = TextEditingController();
bool _isdispose = false;
  // Updaing Student
  CollectionReference students =
      FirebaseFirestore.instance.collection('students');

  Future<void> updateUser(id, name, email, password) async{
    final docRef = students.doc(id);
  final docSnapshot = await docRef.get();

  if (docSnapshot.exists) {
    await docRef.update({'name': name, 'email': email, 'password': password});
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data upadted"),backgroundColor: Colors.green,));
    students
        .doc(widget.id)
        .update({'name': namec.text, 'email': emailc.text, 'password': passwordc.text})
        .then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Upadted successFully"),backgroundColor: Colors.green,)))
        .catchError((error) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something Went Wrong $error"),backgroundColor: Colors.red,)));
  } else {
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Document with ID $id does not exist"),backgroundColor: Colors.red,));
    // Handle the case where the document doesn't exist
  }
     
  }

  @override
  void initState() {
    // TODO: implement initState
    // super.dispose();
    super.initState();
    
   namec.text = widget.name;
    surnamec.text = widget.surname;
    emailc.text = widget.email;
    passwordc.text = widget.password;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Student"),
      ),
      body: Form(
          key: _formKey,
          // Getting Specific Data by ID
          child: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            future: FirebaseFirestore.instance
                .collection('students')
                .doc(widget.id)
                .get(),
            builder: (_, snapshot) {
              if (snapshot.hasError) {
                print('Something Went Wrong');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              // var data = snapshot.data?.data();
              // var name = namec.text  ;
              // var email = emailc.text;
              // var password = passwordc.text;
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        controller: namec,
                        // initialValue: name,
                        autofocus: false,
                        // onChanged: (value) => namec.text = value,
                        decoration: InputDecoration(
                          labelText: 'Name: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        controller: emailc,
                        // initialValue: email,
                        autofocus: false,
                        // onChanged: (value) => emailc.text = value,
                        decoration: InputDecoration(
                          labelText: 'Email: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Email';
                          } else if (!value.contains('@')) {
                            return 'Please Enter Valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      child: TextFormField(
                        controller: passwordc,
                        // initialValue: password,
                        autofocus: false,
                        // onChanged: (value) => passwordc.text = value,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password: ',
                          labelStyle: TextStyle(fontSize: 20.0),
                          border: OutlineInputBorder(),
                          errorStyle:
                              TextStyle(color: Colors.redAccent, fontSize: 15),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Password';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Validate returns true if the form is valid, otherwise false.
                              if (_formKey.currentState!.validate()) {
                             try {
                                  updateUser(widget.id, namec.text, emailc.text, passwordc.text);
                             } catch (e) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something Went Wrong $e"),backgroundColor: Colors.blueGrey,));
                             }
                                // Navigator.pop(context);
                              }
                            },
                            child: Text(
                              'Update',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text(
                              'Reset',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),
    );
  }
}
