import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
  List <String> city = ["Bhaktapur", "Laltipur", "Kathmandu","Golmadi","Banepa"];
  String selectCity ="Bhaktapur";
  String groupValue ="Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Form")
      ),
      body: SingleChildScrollView(
        child: Container(
                color: Colors.greenAccent,
                height: MediaQuery.of(context).size.height,
          child: Form(
                    child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                  Text("Name", textScaleFactor: 1.5,),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                      children: <Widget>[
                       Expanded(
                                              child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "First Name",
                          hintText: "First Name",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if (value.isEmpty){
                          return "the field cannot be empty";
                        }
                        else
                        return null;
                      },
                    ),
                       ),
                       SizedBox(width: 10.0,),
                    Expanded(
                                        child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          hintText: "Last Name",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.person_outline),
                          border: OutlineInputBorder()
                        ),
                        validator: (value){
                        if (value.isEmpty){
                          return "the field cannot be empty";
                        }
                        else
                        return null;
                      },
                      ),
                    ),
                    
                    ]
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                    Text("District", textScaleFactor: 1.5),
                    SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      border: Border.all()
                    ),
                    child: DropdownButton(
                      value: selectCity,
                      isExpanded: true,
                    items: city.map((String value){
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value));
                    } ).toList() ,
                     onChanged:(value){
                       setState(() {
                         this.selectCity =value;
                       });
                     }),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Gender", textScaleFactor: 1.5,),
                  SizedBox(
                    height: 10.0,
                  ),
                Container(
                      decoration: BoxDecoration(
                        border: Border.all()
                      ),        
                       child: Row(
                      children: <Widget>[
                        Container(
                         child: Row(
                            children: <Widget>[
                              Radio(
                                value: "Male" ,
                                 groupValue: groupValue,
                                 onChanged: (value){
                                   setState(() {
                                     this.groupValue =value;
                                   });
                                 },
                                  
                                ),
                                Text("Male")
                            ],
                          )
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Radio(
                                value: "female" ,
                                 groupValue: groupValue,
                                 onChanged: (value){
                                   setState(() {
                                     this.groupValue =value;
                                   });
                                 },
                                  
                                ),
                                Text("Female")
                            ],
                          )
                        ),
                         SizedBox(
                    height: 10.0,
                  ),
                  
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Mobile Number", textScaleFactor: 1.5,),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                          labelText: "Mobile Number",
                          hintText: "Mobile Number",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if (value.isEmpty){
                          return "the field cannot be empty";
                        }
                        else
                        return null;
                      },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Email Address", textScaleFactor: 1.5,),
                  SizedBox(
                    height: 10.0,
                  ),
                   TextFormField(
                    keyboardType: TextInputType.emailAddress,
                     decoration: InputDecoration(
                          labelText: "Email Address",
                          hintText: "Email Address",
                          contentPadding: EdgeInsets.all(10),
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder()
                      ),
                      validator: (value){
                        if (value.isEmpty){
                          return "the field cannot be empty";
                        }
                        else
                        return null;
                      },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Container(
                      width: 100.0,
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: (){},
                        child: Text("Submit"),),
                    ),
                  )
                ],),
            ),
          ),
        )
      ),
      
    );
  }
}