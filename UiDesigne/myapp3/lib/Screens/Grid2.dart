// import 'package:flutter/material.dart';
// import 'package:myapp3/Screens/Grid2.dart';


// class Mychocie{
//   Mychocie({required this.title,required this.icons});
//   final String title;
//   final icons;
//   // ignore: non_constant_identifier_names
//  List Mychocie=List.generate<Mychocie>(
//   const Mychocie(title: 'Home', icons: Icon(Icons.home)),
//   const Mychocie(title: 'Mobile', icons: Icon(Icons.mobile_off))
//   );
// }


// class Grid_Screen extends StatefulWidget {
//   Grid_Screen({required this.Mychocie});
//   final Mychocie;

//   @override
//   State<Grid_Screen> createState() => _Grid_ScreenState();
// }

// class _Grid_ScreenState extends State<Grid_Screen> {
  
//   List ColorChoice=[Colors.green[100],Colors.green[200],Colors.green[300],Colors.green[400],Colors.green[500]];
 
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: GridView.builder(
//         itemCount: 5,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
//       itemBuilder: (context ,int index){
//         return Card(
//           // color:(index%2==0)?Colors.amber:Colors.green,
//           color: ColorChoice[index],
//           child: Center(child: Text("Items $index")),
//         );
//       }),
//     );
//   }
// }


