import 'package:app11/data/data.dart';
import 'package:flutter/material.dart';

 
class ListMap extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Map and List")
      ),
      body: ListView.separated(
        separatorBuilder: ( context , index){
          return  Divider(
            thickness: 5.0,
            // color: Colors.red,
          );
        },
        itemCount: data.length,
        itemBuilder: (context, index){
          return ListTile(
        leading: CircleAvatar(
          radius: 40.0,
          child: Text("${index +1}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.tealAccent, fontSize: 20.0),),
        ),
        title: Text(data[index]["key"]),
        subtitle: Text(data[index]["use"], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0,),
        ),
          );
        },
      ),
       );
  }
}

 