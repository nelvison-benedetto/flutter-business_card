import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MyApp> {
  int nDonuts = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("App Name"),
          ),
          body: SafeArea(
            child: Column(
              //mainAxisSize: MainAxisSize.min,  //la column si ferma al size dei widget, dont go to bottom of phone
              //verticalDirection: VerticalDirection.up, //stack widgets from bottom, .down stack from the top
              mainAxisAlignment: MainAxisAlignment.center, //start/center/end/spaceround/spaceEvely/..
              crossAxisAlignment: CrossAxisAlignment.stretch,  //stretch/start/end/center/..
              children: [
                Container(
                  color: Colors.white,
                  height: 100.0,
                  width: 100.0,
//margin: EdgeInsets.symmetric(vertical: 50.0,horizontal: 10.0),
//margin: EdgeInsets.fromLTRB(20, 50, 20, 50),
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(20),
                  child: Text("Container 1"),
                ),
                SizedBox(height: 20,),  //work as margin
                Container(
                  width: 100, height: 100,
                  color: Colors.blue,
                  child: Text("Container 2")
                ),
                Container(
                    width: 100, height: 100,
                    color: Colors.black26,
                    child: Text("Container 2")
                ),
                Container(
                  width: double.infinity,  //strecth to all width
                  height: 10,  //as debug to see it
                )
              ],
            )
          ),

          floatingActionButton: FloatingActionButton(
            onPressed:() { setState(() {
              nDonuts++;
            });},
          child: Icon(Icons.add),
          backgroundColor: Colors.blue,

        )
    ));
  }
}

