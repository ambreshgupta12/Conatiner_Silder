import 'package:flutter/material.dart';
// scrollable list that work page by page
class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController  controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View in Flutter"), 
        centerTitle: true,    
         ),
         body: PageView(
           scrollDirection: Axis.horizontal,
           controller: controller,
           physics: ClampingScrollPhysics(),
           pageSnapping: true,
           children: <Widget>[
             Container(
               color: Colors.red,
               child: Center(child: Text("Sagar KOju", textScaleFactor: 3,)),
             ),
             Container(
               color: Colors.redAccent,
               child: Center(child: Text("Flutter",textScaleFactor: 3)),
             ),
             Container(
               color: Colors.green,
               child: Center(child: Text("Dart",textScaleFactor: 3)),
             ),
             Container(
               color: Colors.blueGrey,
               child: Center(child: Text("TensorFlow",textScaleFactor: 3)),
             ),
           ],
         ),
      
    );
  }
}