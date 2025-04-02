import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Experiments',
      home:Scaffold(
        appBar:AppBar(
          title:Text("Demonstration of UI Flutter Layouts"),
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 500,
            color: Colors.orange,
            child: GridView.count(
                crossAxisCount:2,
                children: [
                  Container(
                    color: Colors.lightBlue,
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.home,size: 100,),
                        Text("Home"),
                        ElevatedButton(onPressed: ()=>{}, child: Text("Home")),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Icon(Icons.access_alarm_rounded,size: 100,),
                        Text("Alarm"),
                        ElevatedButton(onPressed: ()=>{}, child: Text("Alarm BUTTON")),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.amberAccent,
                    child: Stack(
                      children: [
                        Positioned(
                            child: Icon(Icons.add_a_photo_rounded,size: 100,),
                            left:60,
                            top: 140,
                        ),
                        Positioned(
                            left: 100,
                            top:100,
                            child: Text("XYZ")
                        ),
                        Positioned(
                          left: 60,
                          top: 10,
                          child: ElevatedButton(onPressed: ()=>{}, child: Text("BUTTON")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.pinkAccent,
                  ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
