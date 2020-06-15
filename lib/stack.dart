import 'package:flutter/material.dart';

class Sta extends StatefulWidget {
  @override
  _StaState createState() => _StaState();
}

class _StaState extends State<Sta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Stack"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image:NetworkImage("https://media.gettyimages.com/photos/different-types-of-food-on-rustic-wooden-table-picture-id861188910?s=612x612"),
                    fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                ),
            ),
            Positioned(
              top: 30.0,
              left: 30.0,
            child: Container(
              height: 50.0,
              alignment: Alignment.center,
              width: 160,
              color: Colors.white,
              child: Text("Sagar Koju"),
            ),),
            Positioned(
              top: 30.0,
              right: 30.0,
            child: Container(
              height: 50.0,
              alignment: Alignment.center,
              width: 160,
              
              child: Text("Mini Store", style: TextStyle(color: Colors.white, fontSize: 30.0),),
            ),),
             Positioned(
              bottom: 30.0,
              right: 30.0,
            child: Container(
              height: 50.0,
              alignment: Alignment.center,
              width: 160,
              color: Colors.white,
              child: Text("Welcome Here",),
            ),),
          ],)
      )
      
    );
  }
}