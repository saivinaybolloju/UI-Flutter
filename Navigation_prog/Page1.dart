import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
    Widget build (BuildContext context) {
    return Scaffold(
      body: Page1(),
    );
  }
}

class Page1 extends StatelessWidget{
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 600,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text("FIRST PAGEE"),
              ),
              SizedBox(
                child: ElevatedButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("go to home")),
              )
            ],
          ),
        ),
      )
    );
  }
}