import 'package:mysocitey/Const/alllib.dart';


Widget Our_Button({String? title,onpress}){
  return ElevatedButton(onPressed:onpress, child: title!.text.make());
}