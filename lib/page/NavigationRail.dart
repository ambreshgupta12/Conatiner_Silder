import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectindex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Rail"),
        centerTitle: true,
      ),
      body: Row(
        
        children: <Widget>[
          
          NavigationRail(
            elevation: 10.0,
            backgroundColor: Colors.green,
            selectedLabelTextStyle: TextStyle(color: Colors.white),
            destinations: [
              NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
               NavigationRailDestination(icon: Icon(Icons.info), label: Text("About Us")),
                NavigationRailDestination(icon: Icon(Icons.shopping_cart), label: Text("Cart")),
            ],
             selectedIndex: _selectindex,
             labelType: NavigationRailLabelType.selected,
             onDestinationSelected: (index){
                setState(() {
                  _selectindex =index;
                });
             } ,
             ),
             VerticalDivider(width: 3.0, thickness: 10.0, color: Colors.red,),

             Expanded(
               child: Center(
                 child: Text("selected index: $_selectindex") ,))
        ],
      ),
      
    );
  }
}