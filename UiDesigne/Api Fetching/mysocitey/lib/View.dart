import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:myapi/Screens1/Insert.dart';
import 'package:mysocitey/Insert.dart';

class Home_Page1 extends StatefulWidget {
  const Home_Page1({Key? key}) : super(key: key);

  @override
  State<Home_Page1> createState() => _Home_Page1State();
}

class _Home_Page1State extends State<Home_Page1> {
  late Future<List<Map<String, dynamic>>> data;

  @override
  void initState() {
    super.initState();
    data = fetchData();
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    final response = await http.get(
        Uri.parse('https://database20810.000webhostapp.com/FlutterCrude/view.php'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      final List<Map<String, dynamic>> dataResponse =
          jsonData.cast<Map<String, dynamic>>();
      return dataResponse;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No data available"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final item = snapshot.data![index];
                return InkWell(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(item['name'].toString()),
                        subtitle: Text(item['email'].toString()),
                        leading: Text(item['id'].toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Insert_Screen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
