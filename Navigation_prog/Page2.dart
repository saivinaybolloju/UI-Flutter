import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: Page2(),
    );
  }
}

class Page2 extends StatelessWidget{
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Text("THIS IS PAGE 2"),
      ),
    );
  }
}