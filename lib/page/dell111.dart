import 'package:app11/cart.dart';
import 'package:app11/page/dell.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Dell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rflutter"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(child: Text("Click Me"),
           onPressed: (){
             return Alert(
               context: context,
               title: "RFLUTTER ALERT",
               type: AlertType.info,
               desc: "FLUTTER IS MORE AWSOME THAN RFLUTTER ",
               buttons: [
                 DialogButton(child: Text("OK"), onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                 }),
                   DialogButton(child: Text("Cancel"), onPressed: (){
                     Navigator.pop(context);
                   })
               ]
             ).show();
           },
          )
        ]
      ),
      
    );
  }
}