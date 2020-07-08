import 'package:flutter/material.dart';

class Regs extends StatefulWidget {
  @override
  _RegsState createState() => _RegsState();
}
 // produce an animation on the appbar while scrolling
class _RegsState extends State<Regs> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             leading: Icon(Icons.menu),
             pinned: true,
             floating: true,
             snap: true,
            //  title: Text("Silver AppBar"),
             actions: <Widget>[
               Icon(Icons.add_alarm)
             ],
             expandedHeight: 200.0,
             flexibleSpace: FlexibleSpaceBar(
               title: Text("Silver APPbar"),
               centerTitle: true,
               background: Image.asset("images/koju.jpg", fit: BoxFit.cover,),
             ),
           ),
           SliverList(
             delegate: SliverChildListDelegate([
               Container(
                 height: 220.0,
                 width: double.infinity,
                 color: Colors.blueGrey
               ),
               Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.blue,
               ),
               Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.green
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.greenAccent
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.black12
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.black87
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.yellowAccent
               ),
                Container(
                  height: 220.0,
   
                 width: double.infinity,
                 color: Colors.yellow
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.orange
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.orangeAccent
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.purple
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.purpleAccent
               ),
                Container(
                  height: 220.0,
                 width: double.infinity,
                 color: Colors.grey
               ),
             ]),
            )
         ],
       ),  
    );
    
  }
}

