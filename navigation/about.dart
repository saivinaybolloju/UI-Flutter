import 'package:flutter/material.dart';

class about extends StatefulWidget {
  String output;
  about({super.key, required this.output});
  @override
  State<about> createState() => _aboutState();
}
class _aboutState extends State<about> {
void setResult(var output){
  setState((){
    widget.output="About";
  });
}
@override
  Widget build(BuildContext context) {

    return Text(output);
  }
  }
