import 'package:flutter/material.dart';

class  Silder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>
            [
           Card(
                        child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/s.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
           ),
            Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/sa.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
            Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/sag.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
             Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/sagar.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
             Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/k.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
             Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/ko.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
             Card(
                          child: Column(
              children: <Widget>[
                Container(
                  height: 162.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/koj.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Container(
                 height: 30.0,
                 width: 120.0,
                 color: Colors.red,
                 child: Center(child: Text("Sagar", style: TextStyle(color: Colors.white ,fontSize: 13.0, fontWeight: FontWeight.bold),)),
                )
              ],),
            ),
            
            ]
          )
        )
      ],
      
    );
  }
}