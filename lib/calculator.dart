import 'package:flutter/material.dart';
class Cal extends StatefulWidget {
  @override
  _CalState createState() => _CalState();
}
class _CalState extends State<Cal> {
  int a;
  int b;
  int c=0;
  TextEditingController txtfit1 = TextEditingController();
  TextEditingController txtfit2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Calculator")
      ),
      body: Column(
        children: <Widget>[
         SizedBox(height: 20.0,),
          TextField(
            keyboardType: TextInputType.number,
            controller: txtfit1,
            decoration: InputDecoration(
              hintText: "Enter the First Number",
              border: OutlineInputBorder(),
            ),
          ),
           SizedBox(height: 20.0,),
          TextField(
             keyboardType: TextInputType.number,
            controller: txtfit2,
            decoration: InputDecoration(
              hintText: "Enter the Second Number",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
           height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[   
               RaisedButton(
              onPressed: (){
                setState(() {
                  a = int.parse(txtfit1.text);  
                  b= int.parse(txtfit2.text);
                  c= a+b;

                });
              },
              child: Text("Add"),
              ),
              RaisedButton(
              onPressed: (){
                setState(() {
                  a = int.parse(txtfit1.text);  
                  b= int.parse(txtfit2.text);
                  c= a~/b;

                });
              },
              child: Text("Div"),
              ),
              RaisedButton(
              onPressed: (){
                setState(() {
                  a = int.parse(txtfit1.text);  
                  b= int.parse(txtfit2.text);
                  c= a-b;

                });
              },
              child: Text("Sub"),
              ),
              RaisedButton(
              onPressed: (){
                setState(() {
                  a = int.parse(txtfit1.text);  
                  b= int.parse(txtfit2.text);
                  c= a*b;
             
                });
              },
              child: Text("Mul"),
              ),
              ]
          ),
          Text("$c" , style: TextStyle(fontSize: 20.0),),

        ]
      ),
    );
  }
}