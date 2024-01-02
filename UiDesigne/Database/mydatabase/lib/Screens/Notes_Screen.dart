import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mydatabase/Screens/Note_Screen.dart';
import 'package:mydatabase/Services/databasehelper.dart';
import 'package:mydatabase/Widgets/Note_Widget.dart';

import '../Models/note_Models.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Notes"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
  await Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteScreen())
          
        );
        setState(() {
          
        });
      } ,child: Icon(Icons.add,size: 34,)),
      body: FutureBuilder<List<Note>?>(
        future: DatabaseHelper.getAllNotes(),
        builder: (context ,AsyncSnapshot<List<Note>?> snapshot) {
           if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if(snapshot.hasError){
            return Center(child: Text(snapshot.error.toString()),);
          }else if(snapshot.hasData){
            if(snapshot.data != null){
              return ListView.builder(
                itemBuilder:(context ,index)=>NoteWidget(note: snapshot.data![index], onTap: ()async{
                  await Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteScreen()));
                }, onLongPress: ()async {
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("Are you survar you want to delete ?"),
                      actions: [
                        ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                          onPressed: () async {
                          DatabaseHelper.deleteNote(snapshot.data![index]);
                          Navigator.pop(context);
                          setState(() {
                            
                          });
                        }, child: Text("Ha Ba")),
                        ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text("Na Ba"))
                      ],
                    );
                  });
                }),
                  itemCount: snapshot.data!.length,
                 );
            }
            return Center(child: Text("Khuch To dal Idhar",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),);
          }
          return SizedBox.shrink();
        },
         ),
    );
  }
}