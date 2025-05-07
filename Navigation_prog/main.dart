import 'package:flutter/material.dart';
import 'package:navigation/Navigation_prog/Page1.dart';
import 'package:navigation/Navigation_prog/Page2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Navigation of Pages",
        home: const navigation(),
        initialRoute: '/',
        routes:{
          '/NEW-TITLE': (context) => const Page1(),
        },
      onGenerateRoute: (settings) {
        if (settings.name == '/NEW-TITLE') {
          return MaterialPageRoute(
            builder: (context) => const Page1(),
          );
        }
        return null; // Return null if no route matches
      },
    );
  }
}

class navigation extends StatelessWidget{
  const navigation({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Container(
        color: Colors.blue,
        width: 500,
        height: 500,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: ()=>{
              Navigator.pushNamed(context, '/NEW-TITLE'),
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page1()))
            }, child: Text("Button 1")),
            ElevatedButton(onPressed: ()=>{
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Page2()))
            }, child: Text("Button 2")),
          ],
        )
      ),
    );
  }
}