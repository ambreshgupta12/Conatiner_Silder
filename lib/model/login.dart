import 'package:app11/Myhome.dart';
import 'package:app11/model/Sign_up.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
   bool  _toggleVisibility =true;
  

   Widget _buildUserNameField(){
      
      return   TextFormField(
                                controller: _usernameController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Enter the user name",
                                  labelText: "Username",
                                  
                                ),
                      );
   }
  Widget _buildPasswordTextField(){

    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        hintText: " Enter the Password",
        labelText: "Password",
        
        hintStyle: TextStyle(color: Color(0xFFBDC2CB),fontSize:18.0),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
               _toggleVisibility = !_toggleVisibility;
            });
          },
          icon:_toggleVisibility?Icon(Icons.visibility_off):
          Icon(Icons.visibility),
          ),
      ),
      obscureText: _toggleVisibility,
    );
  }
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("images/s.jpg", fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.8),
          colorBlendMode: BlendMode.darken,
          ),
           Center(
           child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,   
                  children: <Widget>[   
                  Text("Sign In ", style: TextStyle(color: Colors.white, fontSize: 30.0),),
                  Center(
                  child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                   child: Form(
                         key: formkey,
                          child: Card(
                               child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                    children: <Widget>[
                      _buildUserNameField(),
                      SizedBox(
                        height: 5.0,
                      ),
                      _buildPasswordTextField(),
                     
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Myhome()));
                    },
                      child: Text("Sign IN"),
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Donot  have an Account ",style: TextStyle(fontSize: 20.0)),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUP()));
                          },
                          child: Text("Sign Up", style: TextStyle(color: Colors.red, fontSize: 20.0),))
                      ],
                    )
                    ],
                  ),
                            ),
                          ),
        )
      ),
                ),
              ),
                   ]
           ),
         ),

        ],)
      
    );
  }
}

