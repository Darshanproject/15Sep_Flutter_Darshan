import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mydatabase/Models/note_Models.dart';

class NoteWidget extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  const NoteWidget({super.key,required this.note,required this.onTap,required this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [Align(
          alignment: Alignment.center,
          child: Text(
            note.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            thickness: 4,
          ),
        ),
        Text(note.description,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800),)
        
        ],
      ),
      ),
    );
  }
}