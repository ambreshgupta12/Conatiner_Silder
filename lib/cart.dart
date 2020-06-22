import 'package:flutter/material.dart';

// import 'package:rflutter_alert/rflutter_alert.dart';
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"), 
      ),
      body: Container(
        color: Colors.black26,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
               Card(
              color: Colors.yellow,
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:14.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage("images/s.jpg") ,),
                       SizedBox(
                         height: 15.0,
                       ),
                      Text("Sagar Koju", style: TextStyle(color: Colors.red, fontSize: 20.0,  fontWeight: FontWeight.bold),),
                       SizedBox(
                         height: 15.0,
                       ),
                      Text("Computer Engineering", style: TextStyle(color: Colors.blue, fontSize: 20.0, fontWeight: FontWeight.bold),),
                       SizedBox(
                         height: 15.0,
                       ),
                      Text("Hello it me sagar KOju i am currently reading computer engineering at khowpa engineering college at bhaktapur. i am currently studying a programming lagnuage in free time", textAlign: TextAlign.justify, style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),)
                  ]
                ),
              ),
            ),
           
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("GO Back", style: TextStyle(color: Colors.black, fontSize: 16.0),),
              ),
             ]
        ),
      ),
      
    );
  }
}