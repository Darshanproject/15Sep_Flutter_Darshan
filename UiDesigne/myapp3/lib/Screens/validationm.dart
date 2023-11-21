   import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp3/Screens/Laksxman.dart';

class Add_notice extends StatefulWidget {
  const Add_notice({super.key});
  @override
  State<Add_notice> createState() => _Add_noticeState();
}

class _Add_noticeState extends State<Add_notice> {
  TextEditingController add_notice = TextEditingController();
  TextEditingController subject = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              context: context,
              builder: (BuildContext context) {
                return Center(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 550,
                      width: 300,
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Container(
                              height: 150,
                              width: 200,
                              child: Image.network(
                                "https://www.trafficsigns.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/w/1/w16-18-notice.png",
                              )),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text("Add a Notice",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.dmSans().fontFamily)),
                              SizedBox(width: 160),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>guess_game()));
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      fontFamily:
                                          GoogleFonts.dmSans().fontFamily),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30),
                          Flexible(
                            child: SingleChildScrollView(
                              child: Container(
                                height: 330,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: "Maintenance",
                                        labelText: "Add Subject",
                                        prefixIcon: Icon(
                                          Icons.subject,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Add Subject";
                                        }
                                        return null;
                                      },
                                      controller: subject,
                                    ),
                                    SizedBox(height: 20),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        hintText: "This is to inform you",
                                        labelText: "Enter notice",
                                        prefixIcon: Icon(
                                          Icons.info_outline_rounded,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Enter notice";
                                        }
                                        return null;
                                      },
                                      controller: add_notice,
                                    ),
                                    SizedBox(height: 20),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text("Tap"),
        ),
      ),
    );
  }
}
