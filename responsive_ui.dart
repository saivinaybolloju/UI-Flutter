import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      home: const Responsive(),

    );
  }
}


class Responsive extends StatelessWidget{
  const Responsive({super.key});
  @override
    Widget build(BuildContext context) {
    MobileView mv=MobileView();
    TabletView tv=TabletView();
    DesktopView dv=DesktopView();
      double screenW=MediaQuery.of(context).size.width;
      if(screenW<=600){
        return mv.build(context);
      }
      else if(screenW>600 && screenW<=1200  ){
        return tv.build(context);
      }
      else {
        return dv.build(context);
      }
  }

}
//
// class MobileView extends StatelessWidget{
//   const MobileView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           child: Center(
//             child:Text("Mobile View"),
//           ),
//         ),
//     );
//   }
// }
// class TabletView extends StatelessWidget{
//   const TabletView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Tablet View"),
//         ),
//       ),
//     );
//   }
// }
// class DesktopView extends StatelessWidget{
//   const DesktopView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Desktop View"),
//         ),
//       ),
//     );
//   }
// }


class MobileView extends StatefulWidget{
  const MobileView({super.key});import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      home: const Responsive(),

    );
  }
}


class Responsive extends StatelessWidget{
  const Responsive({super.key});
  @override
    Widget build(BuildContext context) {
    MobileView mv=MobileView();
    TabletView tv=TabletView();
    DesktopView dv=DesktopView();
      double screenW=MediaQuery.of(context).size.width;
      if(screenW<=600){
        return mv.build(context);
      }
      else if(screenW>600 && screenW<=1200  ){
        return tv.build(context);
      }
      else {
        return dv.build(context);
      }
  }

}
//
// class MobileView extends StatelessWidget{
//   const MobileView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           child: Center(
//             child:Text("Mobile View"),
//           ),
//         ),
//     );
//   }
// }
// class TabletView extends StatelessWidget{
//   const TabletView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Tablet View"),
//         ),
//       ),
//     );
//   }
// }
// class DesktopView extends StatelessWidget{
//   const DesktopView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Desktop View"),
//         ),
//       ),
//     );import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Responsive UI",
      home: const Responsive(),

    );
  }
}


class Responsive extends StatelessWidget{
  const Responsive({super.key});
  @override
    Widget build(BuildContext context) {
    MobileView mv=MobileView();
    TabletView tv=TabletView();
    DesktopView dv=DesktopView();
      double screenW=MediaQuery.of(context).size.width;
      if(screenW<=600){
        return mv.build(context);
      }
      else if(screenW>600 && screenW<=1200  ){
        return tv.build(context);
      }
      else {
        return dv.build(context);
      }
  }

}
//
// class MobileView extends StatelessWidget{
//   const MobileView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//           child: Center(
//             child:Text("Mobile View"),
//           ),
//         ),
//     );
//   }
// }
// class TabletView extends StatelessWidget{
//   const TabletView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Tablet View"),
//         ),
//       ),
//     );
//   }
// }
// class DesktopView extends StatelessWidget{
//   const DesktopView({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Center(
//           child:Text("Desktop View"),
//         ),
//       ),
//     );
//   }
// }


class MobileView extends StatefulWidget{
  const MobileView({super.key});
    @override
      State<MobileView> createState() {
        return _MobileViewState();
    }
}
class _MobileViewState extends State<MobileView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.mobile_friendly_sharp)
        ),
      );
  }
}



class TabletView extends StatefulWidget{
  const TabletView({super.key});
  @override
  State<TabletView> createState() {
    return _TabletViewState();
  }
}
class _TabletViewState extends State<TabletView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.tab_outlined)
      ),
    );
  }
}




class DesktopView extends StatefulWidget{
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() {
    return _DesktopViewState();
  }
}
class _DesktopViewState extends State<DesktopView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.desktop_mac_sharp)
      ),
    );
  }
}
//   }
// }


class MobileView extends StatefulWidget{
  const MobileView({super.key});
    @override
      State<MobileView> createState() {
        return _MobileViewState();
    }
}
class _MobileViewState extends State<MobileView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.mobile_friendly_sharp)
        ),
      );
  }
}



class TabletView extends StatefulWidget{
  const TabletView({super.key});
  @override
  State<TabletView> createState() {
    return _TabletViewState();
  }
}
class _TabletViewState extends State<TabletView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.tab_outlined)
      ),
    );
  }
}




class DesktopView extends StatefulWidget{
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() {
    return _DesktopViewState();
  }
}
class _DesktopViewState extends State<DesktopView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.desktop_mac_sharp)
      ),
    );
  }
}
    @override
      State<MobileView> createState() {
        return _MobileViewState();
    }
}
class _MobileViewState extends State<MobileView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.mobile_friendly_sharp)
        ),
      );
  }
}



class TabletView extends StatefulWidget{
  const TabletView({super.key});
  @override
  State<TabletView> createState() {
    return _TabletViewState();
  }
}
class _TabletViewState extends State<TabletView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.tab_outlined)
      ),
    );
  }
}




class DesktopView extends StatefulWidget{
  const DesktopView({super.key});
  @override
  State<DesktopView> createState() {
    return _DesktopViewState();
  }
}
class _DesktopViewState extends State<DesktopView>{
  // const _MobileViewState({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
          child:Icon(Icons.desktop_mac_sharp)
      ),
    );
  }
}
