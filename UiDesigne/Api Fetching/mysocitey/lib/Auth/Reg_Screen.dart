import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mysocitey/mymainfiel.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
class Reg_Screen extends StatefulWidget {
  const Reg_Screen({super.key});

  @override
  State<Reg_Screen> createState() => _Reg_ScreenState();
}

class _Reg_ScreenState extends State<Reg_Screen> {
  final _fromkey = GlobalKey<FormState>();
  bool ischeck = false;
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void Reg() async {
    http.Response response;
    response = await http.post(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/rigester.php'),
    body: {'name':name.text,'surname':surname.text,'email':email.text,'password':password.text}
    );
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child:Form(
            key: _fromkey,
            child: Column(
              children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:TextFormField(
                  controller: name,
                  validator: (value) {
                    if (value == null && value!.isEmpty) {
                      return " Please enter your name here ";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Name",
                    labelText: "Name"
                  ),
                ),
                    ),
                     Padding(
                    padding: EdgeInsets.all(8.0),
                    child:TextFormField(
                  controller: surname,
                  validator: (value) {
                    if (value == null && value!.isEmpty) {
                      return " Please enter your surname here ";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Surname",
                    labelText: "Surname"
                  ),
                ),
                    ),
                     Padding(
                    padding: EdgeInsets.all(8.0),
                    child:TextFormField(
                  controller: email,
                  validator: (value) {
                    if (value == null && value!.isEmpty) {
                      return " Please enter your email here ";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Email",
                    labelText: "email"
                  ),
                ),
                    ),
                     Padding(
                    padding: EdgeInsets.all(8.0),
                    child:TextFormField(
                  controller: password,
                  validator: (value) {
                    if (value == null && value!.isEmpty) {
                      return " Please enter your password here ";
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "********",
                    labelText: "Password",
                    suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.visibility)) 
                  ),
                ),
                    ),
                    SizedBox(
                      width: context.screenWidth - 40,
                      child: ElevatedButton(onPressed: () async{
                        if (_fromkey.currentState!.validate())  {
                          await 
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page()));
                          Reg();
                        }else{
                           "Please enter all the fileds given above";
                        }
                      }, child: Text("Reg")),
                    )
              ],
          )) ),
      ),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("This is your home page")),
    );
  }
}