import 'dart:io';
import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyHomePage home1=MyHomePage(title: "Calculator Page");
    return MaterialApp(
      title: 'Calculator Page',
      home: home1,

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController num1=TextEditingController();
    TextEditingController num2=TextEditingController();
    String result="0";

    void add(){
      setState(() {
        result='${int.parse(num1.text)+int.parse(num2.text)}';
      });

    }
    int sub(int a,int b){
      return(a-b);
    }
    int mul(int a,int b){
      return(a*b);
    }
    double div(int a,int b){
      // if(b!=0) {
        return(a/b);
      // }
    }


    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.grey,

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: GridView.count(
              crossAxisCount: 1,
              children:[

                Container(
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        child:Text(result,style:TextStyle(fontSize: 30,fontFamily:'Sans-Serif')),
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:
                        TextField(
                          controller: num1,
                          decoration: InputDecoration(labelText: "Enter Value 1"),
                        ),
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:TextField(
                          controller: num2,
                          decoration: InputDecoration(labelText: "Enter Value 2"),
                        ),
                      ),
                      Container(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(onPressed: add, child: Icon(Icons.add)),
                            ElevatedButton(onPressed: ()=>{print(sub(2,3))}, child: Icon(Icons.minimize)),
                            ElevatedButton(onPressed: ()=>{print(mul(2,3))}, child: Icon(Icons.add)),
                            ElevatedButton(onPressed: ()=>{print(div(2,0))}, child: Text("/")),
                          ],
                        ), 
                      )
                      
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>{},
        tooltip: 'Submit',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
