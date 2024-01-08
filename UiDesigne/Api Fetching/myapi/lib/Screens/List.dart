// import 'package:flutter/material.dart';
// import'package:http/http.dart' as http;
// import'dart:convert';

// // ignore: unused_import
// import 'package:myapi/Screens/Home_page.dart';
// Map? mapresposne;
// String? stringresponse;
// List? listresponse;
// class List_Screen extends StatefulWidget {
//   const List_Screen({super.key});

//   @override
//   State<List_Screen> createState() => _List_ScreenState();
// }

// class _List_ScreenState extends State<List_Screen> {
//   Future<void> fetchlist()async {
//       http.Response response;
//       response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
//       if (response.statusCode == 200) {
//        final stringresponse = response.body;
//       final mapresposne = json.decode(stringresponse);
//         setState(() {
//           listresponse = mapresposne['data'];
//         });
//       }
//   }
//   @override
//   void initState() {
  
//     super.initState();
//       fetchlist();
//   }
//   Widget build(BuildContext context) {
    
//     return  Scaffold(
//       body:  SafeArea(
//         child: Container(
//           child: ListView.builder(
//           itemCount: listresponse!.length,
//             itemBuilder: (context,index){
//             final item = listresponse![index]  ;
//             return ListTile(
//               trailing: CircleAvatar(backgroundImage: NetworkImage(item['avatar'])),
//               title: Text(item['first_name' + '' + 'last_name']),
//               subtitle: Text(item['email']),
//             );
//           },
//           ),
//         ),
//       ),
//       // body: Center(
//       //   child: Text(listresponse![0].toString()),
//       // ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:myapi/Screens/Update_Screen.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  List? listResponse;

  Future<void> fetchList() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      final stringResponse = response.body;
      final mapResponse = json.decode(stringResponse);
      setState(() {
        listResponse = mapResponse['data'];
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            content: Text("Data Not Found"),
          );
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Example'),
      ),
      body: Container(
        child: listResponse == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: listResponse!.length,
                itemBuilder: (context, index) {
                  final item = listResponse![index];
                  return ListTile(
                    trailing: CircleAvatar(
                      backgroundImage: NetworkImage(item['avatar']),
                    ),
                    title: Text(item['first_name'] + ' ' + item['last_name']),
                    subtitle: Text(item['email']),
                    leading : Text(item['id'].toString()),
                  );
                },
              ),
      ),
    );
  }
}

