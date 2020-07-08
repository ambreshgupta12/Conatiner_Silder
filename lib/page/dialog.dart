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
          // backgroundColor:Colors.blue, 
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

class Sa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Center(
      child: RaisedButton(
        onPressed: () {
          final SnackBar snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30.0)
             ),
            duration: Duration(microseconds: 3000),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          // Scaffold.of(context).showSnackBar(snackBar);
          Scaffold.of(context).showSnackBar(snackBar);
        }
      ),
   );
  }
}