import 'package:flutter/material.dart';

class Second_Screen extends StatelessWidget {
  const Second_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue
                  )
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.blue
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                    margin: EdgeInsets.all(5),
                    color: Colors.yellow[500],  
                      ),
                       Container(
                      height: 80,
                      width: 80,
                    margin: EdgeInsets.all(5),
                    color: Colors.pink[500],  
                      ),
                       Container(
                      height: 80,
                      width: 80,
                    margin: EdgeInsets.all(5),
                    color: Colors.purple[500], 
                    child: Icon(Icons.star,color: Colors.blue,size: 55,), 
                      )
                  ],
                ),
              ),
              Container(
                child: Image.network("https://media.istockphoto.com/id/1454448091/photo/man-planting-flag-on-piles-of-cash.webp?b=1&s=170667a&w=0&k=20&c=O4_hGE0XZ5JuIYUVDblKYOTJM7gkb9eSLp86PqgWLj0="),
              ),
              SizedBox(
                height: 85,
              ),
              Container(
                child: Image(image: AssetImage("assets/images/abc2.jpeg")),
              ),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}