import 'package:flutter/material.dart';

class Ta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        //  material design widget that display the horizontal row tab
       child: Scaffold(
         appBar: AppBar(
           title: Text("Tab Bar"),
           bottom: TabBar(
             isScrollable: true,
             indicatorColor: Colors.red,
            tabs: <Widget>[
                Tab(icon: Icon(Icons.home),),
                Tab(text: "Sagar",),
                Tab(icon: Icon(Icons.album),),
                Tab(icon: Icon(Icons.info),),

            ], 
            
           ),
         ),
         body: TabBarView(
           children: [
             Center(child: Text("Sagar KOJU", textScaleFactor: 2,)),
             Container(
               height: 200.0,
               width: double.infinity,
               color: Colors.red,
             ),
             Card(
               elevation: 4,
               color: Colors.black54,
               child: Text("Hello Sagar", textScaleFactor: 3,)
             ),
             Text("Hello"),
           ]),
       )
       ),
    );
  }
}


    
  
