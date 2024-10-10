import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
    //create and return the instance of the class status associated to _MainPageState
}

class _MainPageState extends State<MyApp> {
  int nDonuts = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //DON'T SHOW BANNER "DEBUG" ON PHONE
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Imagine Selfie
              CircleAvatar(
                radius: 84,
                backgroundImage: AssetImage('images/Selfie_BkLaSpezia.jpg'),
              ),
              SizedBox(height: 7,),

              //Nelvison Benedetto
              Text(
                "Nelvison Benedetto",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2,),

              //Flutter Developer
              Text(
                "flutter developer".toUpperCase(),
                style: TextStyle(
                  fontFamily: "SourceCodePro",
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8,),

              //Divider (<hr>)
              Container(
                width: MediaQuery.of(context).size.width*0.45,
                child: Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ),
              SizedBox(height: 16,),

              //Tel + Email
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    //color: Colors.orangeAccent,
                  ),
                  //padding: EdgeInsets.symmetric(horizontal: 60),
                  width: MediaQuery.of(context).size.width * 0.92,

                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        //height: 50, //width: 50,
                          //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                          padding : EdgeInsets.fromLTRB(10, 10, 0, 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child : Row(
                            mainAxisSize: MainAxisSize.max,
                             children: [
                               Icon(
                                 Icons.phone,
                                 size: 22,
                                 color: Colors.green,
                               ),
                               SizedBox(width: 10,),
                               Text(
                                 "+39 555 666 777",
                                 style: TextStyle(
                                   color: Colors.green,
                                   fontSize: 19,
                                 ),
                               )
                             ],
                          )
                      ),
                      SizedBox(height: 10,),
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        padding : EdgeInsets.fromLTRB(10, 10, 0, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.email,
                              size: 22,
                              color: Colors.green,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "nelvison.benedetto@gmail.com",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 19,
                              ),
                            )
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /*Container(
                //height: 10,
                width: double.infinity,
              )*/
            ],
          )
        )
      ),
    );

    /*return MaterialApp(
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
                Align(  //don't inherit the stretch applied to all other containers
                alignment: Alignment.center,
                child: Container(
                  color: Colors.yellow,
                  height: 100,width: 100,
                ),
              ),
                Container(  //invisible container
                  width: double.infinity,
                    // used to align other containers base on this max width
                    //to stretch all widgets use CrossAxisAlignment.stretch
                  //height: 10,  //as debug to see it
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
    ));*/
  }
}

