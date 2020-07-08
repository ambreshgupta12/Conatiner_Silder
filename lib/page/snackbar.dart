import 'package:flutter/material.dart';



class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Snack Bar")
          ),
          body: Builder(
  builder: (context) => RaisedButton(
    child: Text('Show Snackbar'),
    onPressed: () {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text('Show Snackbar'),
        action: SnackBarAction(label: "hello", onPressed: (){}),
        duration: Duration(seconds: 3),
      ));
    }),
),
    );
  }
}