import 'package:flutter/material.dart';

class Back_Ground extends StatefulWidget {
  const Back_Ground({super.key});

  @override
  State<Back_Ground> createState() => _Back_GroundState();
}

class _Back_GroundState extends State<Back_Ground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuSEuP5yR-OfKnIa85GTS5Ur4q-Lv_04Hh7Q&usqp=CAU"),fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(
            padding: EdgeInsets.all(24),
            height: 350,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(24)
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)
                    ),
                    labelText: "Name",hintText: "Name"
                  ),
                  
                ),
                SizedBox(height: 25,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24)
                    ),
                    labelText: "Password",
                    hintText: "Password",
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed: (){}, child: Text("Login"))
              ],  
            ),
          )
          ],
        ),
      ),
    );
  }
}