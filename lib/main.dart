import 'package:app11/grid.dart';
import 'package:app11/silder.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Myhome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

   class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
     int _currentTable =0;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conatiner Widget"),
        centerTitle: true
      ),
      body: Card(
           child: ListView(
          children: <Widget>[
          Silder(),
           ListTile(
             leading: Text("Grid View", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30.0),),
             trailing: Text("View All", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 30.0),),
           ),
           GridView.count(
             crossAxisCount: 2,
             primary: false,
             crossAxisSpacing: 20.0,
             mainAxisSpacing: 20.0,
             shrinkWrap: true,
             children: <Widget>[
               Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.redAccent,
                   child: Card(
                                        child: ListTile(
                                          title: FlatButton.icon(
                         onPressed: (){

                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Grid()));
                         }, 
                         icon:Icon(Icons.home),
                          label: Text("Home"), ),
                          subtitle: Text("4", textAlign: TextAlign.center, style: TextStyle(fontSize:60.0),),
                     ),
                   ),
                      
                    
                      
                 ),
                 
               
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.red,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.blue,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.blueAccent,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.grey,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.blueGrey,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.black26,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.black54,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
               Card(
                   child: Container(
                   height: 90.0,
                   width: 90.0,
                   color: Colors.yellow,
                   child: Center(child: Text("Sagar Koju"))
                 ),
               ),
              
             ],

             )
           ],),
            
        ),
      
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedFontSize: 10.0,
        elevation: 3.0,
       selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
        type:BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16.0),
        selectedItemColor: Colors.blue,
        currentIndex: _currentTable,
        onTap: (int index){
          setState(() {
          _currentTable =index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Home"), backgroundColor:Colors.blue ),
          BottomNavigationBarItem(icon: Icon(Icons.info),title: Text("About us"), backgroundColor:Colors.blue),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("Cart"), backgroundColor:Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.star),title: Text("Rate"), backgroundColor:Colors.blue)
        ]),
      );
  }
}