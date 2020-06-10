import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View")
      ),
      body: SingleChildScrollView(
              child: Column(
          children:<Widget>[
   GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        primary: false,
        children: List.generate(30, (index) => Center
        (child: GridTile
        (
          footer: Center(child: Text("index: $index")),
        child: Icon(Icons.hotel, size: 50.0)
        )))
        
    ),
          ]
        ),
      ),
    );
  }
}

