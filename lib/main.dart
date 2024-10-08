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
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("App Name"),
          ),
          body: Center(
            child: Text(
              'Number of donuts: ${nDonuts}',
              style: TextStyle(fontSize: 40),
            ),
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

