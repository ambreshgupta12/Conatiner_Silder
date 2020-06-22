import 'package:app11/model/login.dart';
import 'package:flutter/material.dart';
void main(){
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
