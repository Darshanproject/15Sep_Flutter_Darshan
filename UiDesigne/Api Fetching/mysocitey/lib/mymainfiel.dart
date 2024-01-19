
    import 'dart:convert';

    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
import 'package:velocity_x/velocity_x.dart';
    import 'adddata.dart';
    import 'details.dart';

    void main() 
    {
      runApp(MaterialApp(

          title: "Online database Example",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue
          ),
          home:MyHome()

      ));
    }

    class MyHome extends StatefulWidget
    {
      @override
      MyHomeState createState() => MyHomeState();


      
    }

    class MyHomeState extends State<MyHome>
    {


      Future<List>getdata() async
      {
          final response= await http.get(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/view.php"));
          return jsonDecode(response.body);
      }

      @override
      Widget build(BuildContext context)
      {
          return Scaffold(

            appBar: AppBar(
                title: Text("Json Parsing"),
            ),
            floatingActionButton: FloatingActionButton
              (
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AddData())),
                child: Icon(Icons.add),
              ),
              body:FutureBuilder<List>(

                future: getdata(),
                builder:(ctx,ss)
                {
                    if(ss.hasError)
                      {
                        print("Error $Error");
                      }
                      if(ss.hasData && ss.data != null)
                        {
                          return Items(list: ss.data!,);
                        }
                      else{
                        return CircularProgressIndicator();
                      }
                },


          ));
      }

    }
    class Items extends StatelessWidget
    {
        List list;

        Items({required this.list});

      @override
      Widget build(BuildContext context)
      {
          return ListView.builder(

              itemCount: list==null?0:list.length,
              itemBuilder: (ctx,i)
            {
                  return Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        width: context.screenWidth - 40,
                        child: InkWell(
                          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=> Details(list:list,index:i))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(list[i]["name"] ?? ""),
                              Text(list[i]["email"] ?? ""),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      )
                    ],
                  );
            });


      }

    }