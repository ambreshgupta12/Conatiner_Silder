import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class SagarKoju extends StatefulWidget {
  @override
  _SagarKojuState createState() => _SagarKojuState();
}

class _SagarKojuState extends State<SagarKoju> {

  var url  ="https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    fetchdata();
    super.initState();
  }
   fetchdata ()async{
      var resp= await http.get(url);
      data = jsonDecode(resp.body);
      setState(() {
        
      });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json Data Fetching")
      ),
      body: data!= null?ListView.builder(itemBuilder: (context, index){
        return ListTile(
          title: Text(data[index]["title"]),
          subtitle: Text("${data[index]["id"]}"),
          leading: Image.network(data[index]["url"]),
         
        );
      }): Center(child: CircularProgressIndicator(),)

      
    );
  }
}