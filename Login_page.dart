import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @overrideimport 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyHomePage home1=MyHomePage(title: "Navbar Login Page");
    return MaterialApp(
      title: 'Login Page',
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

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,

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
                        child:Text("Login",style:TextStyle(fontSize: 30,fontFamily:'Sans-Serif')),
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:
                            TextField(
                              decoration: InputDecoration(icon:Icon(Icons.mail) ,labelText: "Enter Username"),
                            ),
                      //   child:
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:TextField(
                          decoration: InputDecoration(icon:Icon(Icons.password), labelText: "Enter Password"),
                        ),
                      ),

                      ElevatedButton(onPressed: ()=>{}, child: Text("Login")),
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

  Widget build(BuildContext context) {
    MyHomePage home1=MyHomePage(title: "Navbar Login Page");
    return MaterialApp(
      title: 'Login Page',
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

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,

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
                        child:Text("Login",style:TextStyle(fontSize: 30,fontFamily:'Sans-Serif')),
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:
                            TextField(
                              decoration: InputDecoration(icon:Icon(Icons.mail) ,labelText: "Enter Username"),
                            ),
                      //   child:
                      ),
                      SizedBox(
                        height:50,
                        width:200,
                        child:TextField(
                          decoration: InputDecoration(icon:Icon(Icons.password), labelText: "Enter Password"),
                        ),
                      ),

                      ElevatedButton(onPressed: ()=>{}, child: Text("Login")),
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
