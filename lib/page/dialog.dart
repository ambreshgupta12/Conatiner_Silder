import 'package:app11/page/dell111.dart';
import 'package:flutter/material.dart';

class ListAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog box"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
         
          AlertDialog(
          backgroundColor:Colors.blue, 
          title: Text("Reset Setting?"),
          content: Text("This will be reset all the device in your mobile"),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text("Cancel"),
              ),
              FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dell()));
              }, child: Text("Accept"),
              ),
          ],
          )
        ]
      ),
      
    );
  }
}