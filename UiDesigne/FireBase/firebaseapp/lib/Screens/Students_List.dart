import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Students_List extends StatefulWidget {
  const Students_List({super.key});

  @override
  State<Students_List> createState() => _Students_ListState();
}

class _Students_ListState extends State<Students_List> {
  final Stream<QuerySnapshot> studentsstream = FirebaseFirestore.instance.collection('students').snapshots();

  CollectionReference students = FirebaseFirestore.instance.collection('students');
  //Method for Deleting data
  Future<void> delteuser(id){
    return students.doc(id).delete().then((value) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Delted Successfully"),backgroundColor: Colors.green,))).catchError((error)=>ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Something went wrong $error"),backgroundColor: Colors.red,)))
    ;
  }
  @override
  Widget build(BuildContext context) {
    return   StreamBuilder(stream: studentsstream, builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
      if (snapshot.hasError) {
          Text("Something went Wrong $snapshot");
      }if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
      }
         final List storedoc = [];
         snapshot.data!.docs.map((DocumentSnapshot document){
          Map a = document.data() as Map<String,dynamic>;
          storedoc.add(a);
          a['id'] = document.id;
         }).toList();
         return ListView.builder(
          itemCount: storedoc.length,
          itemBuilder: (context ,int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(storedoc[index]['name'] + ' ' + storedoc[index]['surname']),
                            Text(storedoc[index]['email'])
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(onPressed: ()=>{}, icon: Icon(Icons.edit)),
                            IconButton(onPressed: ()=>{delteuser(storedoc[index]['id'])}, icon: Icon(Icons.delete))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
         });
    });
      }
}