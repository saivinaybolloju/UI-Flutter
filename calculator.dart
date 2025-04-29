import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  var a=10;
  var b=10;
  var output='0';
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  void setResult(var res){
    setState((){
      output=res;
    });
  }
  void add(){
    a=int.parse(num1.text);
    b=int.parse(num2.text);
    setResult('${a+b}');
    print(output);
  }
  void sub(){
    a=int.parse(num1.text);
    b=int.parse(num2.text);
    setResult('${a-b}');
    print(output);
  }
  void mul(){
    a=int.parse(num1.text);
    b=int.parse(num2.text);
    setResult('${a*b}');
    print(output);
  }
  void div(){
    a=int.parse(num1.text);
    b=int.parse(num2.text);
    setResult('${a/b}');
    print(output);

  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.grey,

        title: Text(widget.title),
      ),
      body: Center(
        
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
                        child:Text(output,
                                   style:TextStyle(fontSize: 30,fontFamily:'Sans-Serif')),
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
                            ElevatedButton(onPressed: sub, child: Icon(Icons.minimize)),
                            ElevatedButton(onPressed: mul, child: Icon(Icons.add)),
                            ElevatedButton(onPressed: div, child: Text("/")),
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
      
    );
  }
}
