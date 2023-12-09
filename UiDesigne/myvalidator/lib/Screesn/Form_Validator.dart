import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class Form_Validator extends StatefulWidget {
  const Form_Validator({super.key});

  @override
  State<Form_Validator> createState() => _Form_ValidatorState();
}

class _Form_ValidatorState extends State<Form_Validator> {
 final _fromkey = GlobalKey<FormState>();
 RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  void ValidateEmail(String Email){
    bool isvalid=EmailValidator.validate(Email);
    print("Is valid");
  }
  TextEditingController Name =TextEditingController();
  TextEditingController Email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _fromkey,
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 52),
          child: Column(
            children: [
              TextFormField(
                controller: Name,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Enter your name";
                  }else{
                    return null;
                  }
                }, 
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  labelText: "Name",
                  hintText: "Name"
                ),
              ),
              TextFormField(
                controller: Email,
                validator: (value){
                  if(emailRegex == true){
                    return "Enter your Valid Email";
                  }else{
                    return null;
                  }
                }, 
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                  labelText: "Email",
                  hintText: "Email"
                ),
              ),
              ElevatedButton(onPressed: () {
              ValidateEmail(Email.text);
                if(_fromkey.currentState!.validate()){
                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing"),backgroundColor: Colors.green,));
                }else{
                return  print("Null");
                }
               
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}