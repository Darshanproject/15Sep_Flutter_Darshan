import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mysocitey/View.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class Insert_Screen extends StatefulWidget {
  const Insert_Screen({super.key});

  @override
  State<Insert_Screen> createState() => _Insert_ScreenState();
}

class _Insert_ScreenState extends State<Insert_Screen> {

  Future <void>Senddata()async{
    http.Response response;
    response = await http.post(Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/insert.php'),
    body: {'name':name.text,'surname':surname.text,'email':email.text} 
    );
    if(response.statusCode == 200){
      print("data send");
    }else{
      print("No data send");
    }
  } 

  final _formKey =GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController surname = TextEditingController();
  bool choice = true;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Senddata();
  // }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10,vertical: 20
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Name",
                    labelText: "Name"
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: surname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Surname",
                    labelText: "Surname"
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Email",
                    labelText: "Email"
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: TextFormField(
                obscureText: choice,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    suffixIcon: choice == true ? IconButton(
                      onPressed: (){
                        setState(() {
                          choice = false;
                        });
                      },
                      icon: Icon(Icons.visibility_off),) :IconButton(onPressed: (){
                        setState(() {
                          choice = true;
                        });
                      },icon: Icon(Icons.visibility),)
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width -40,
                child: ElevatedButton(onPressed: ()async {
                  await Senddata();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext contex)=> View_Screen()));
                }, child: Text("Insert Data"),style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 20,fontWeight: FontWeight.bold,))
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}