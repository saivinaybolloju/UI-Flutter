import 'package:flutter/material.dart';
import 'package:navigation_bar/about.dart';
String output='Hiee';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation of Pages",
      home: const HomePage(title: "Home Page"),
      initialRoute: '/',
      routes:{
      '/about': (context) => about(output: output)
        // '/achievements': (context) => const achievements(),
        // '/contact': (context) => const contact(),
      },
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key,required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: ()=>{}, child: Text("Home",style: TextStyle(fontSize: 15),)),
                  ElevatedButton(onPressed: ()=>{Navigator.pushNamed(context, '/about')}, child: Text("About",style: TextStyle(fontSize: 15),)),
                  ElevatedButton(onPressed: ()=>{}, child: Text("Achievement",style: TextStyle(fontSize: 15),)),
                  ElevatedButton(onPressed: ()=>{}, child: Text("Contact",style: TextStyle(fontSize: 15),)),
                ],
              ),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0,4)
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
                            Text(output)
                    ]
                ),
              ),
              ],
            ),
          ),

    );
  }
}


