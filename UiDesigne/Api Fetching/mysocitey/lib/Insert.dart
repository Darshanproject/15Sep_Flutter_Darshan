import 'dart:convert';
// import 'dart:js_interop';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mysocitey/View.dart';
// import 'package:myapi/Screens/List_Showing_Data.dart';
// import 'package:mysocitey/Screens1/Home_Page.dart';
// import 'package:path/path.dart';
class Insert_Screen extends StatefulWidget {
  const Insert_Screen({super.key});

  @override
  State<Insert_Screen> createState() => _Insert_ScreenState();
}

class _Insert_ScreenState extends State<Insert_Screen> {
  bool choice = true;
  bool value = false;
  var password1;
  // late  String? password1;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController password = TextEditingController();
  Future <void> insertdata() async{
    http.Response response;
    response = await http.post(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/insert.php'),
    body: {'name':name.text,'surname':surname.text,'email':email.text,'password':password.text}
    );
    if (response.statusCode == 200) {
        AlertDialog(
          content: Text("Your data has been sended"),
        );
    }else{
      AlertDialog(
        content: Text("There is some error"),
      );
    }
  //    String hashPassword(password) {
  //   final key = utf8.encode('your_secret_key'); // Replace with a strong secret key
  //   final bytes = utf8.encode(password);
  //   final hmacSha256 = Hmac(sha256, key);
  //   var digest = hmacSha256.convert(bytes);
  //   return digest = password;
  // }
  // final String password1 = hashPassword(password);
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
        child: Column(
          children: [
              TextFormField(
              validator: Validate(),
                controller: name,
                decoration: InputDecoration(
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Name",
                  labelText:"Name" 
                ),
              ),
              SizedBox(
                height: 30,
              ),
                            TextField(
                controller: surname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Surname",
                  labelText:"Surname" 
                ),
              ),
              SizedBox(
                height: 30,
              ),

                            TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Example@gmail.com",
                  labelText:"Example@gmail.com" 
                ),
              ),
              SizedBox(
                height: 30,
              ),

                            TextField(
                              controller: password,
                              obscureText: choice,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Password",
                  labelText:"Password" ,
                  suffixIcon: choice == true ? IconButton(onPressed: (){
                    setState(() {
                      choice = false;
                    });
                  }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                    setState(() {
                      choice = true;
                    });
                  }, icon: Icon(Icons.visibility_off))
                ),
              ),
             Container(
              child: Row(
                children: [
                  Text("Please fill the data here "),
                  Checkbox(value: this.value, onChanged: ( newvalue){
              setState(() {
                value = newvalue!;  
              });
              
             }),
                ],
              ),
             ),
              Spacer(),
              SizedBox(
                width:  MediaQuery.of(context).size.width - 40,
                child:ElevatedButton(onPressed: value !=false? ()async {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Sended"),backgroundColor: Colors.green,));
                  if (name.text == "" && email.text == "" && surname.text == "") {  
                      return show();
                  }else{
                    await insertdata();
                  }
                  // setState(() {
                  //   print(());
                  // });
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Home_Page1()));
                }: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter the values"),backgroundColor: Colors.red,));
                  
                }, child: Text("Save"),)
              )
          ],
        ),
      ),
    );
  }
  Validate(){
  if(name.text == ""  && surname.text == "" && email.text == ""){
    return null;
  }
}
}

show(){
  return AlertDialog(
    content: Text("You have not filled name email or surname prperly"),
    actions: [
      TextButton(onPressed: (){}, child: Text("Ok"))
    ],
  );
}