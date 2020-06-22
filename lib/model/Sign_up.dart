import 'package:app11/Myhome.dart';
import 'package:app11/model/login.dart';
import 'package:flutter/material.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
   final formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
  final _confirmpasswordController =TextEditingController();
   bool _toggleVisibility = true;
   bool _confirmtoggleVisibility = true;

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
      controller: _confirmpasswordController,
      decoration: InputDecoration(
        hintText: "Password",
        
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
  Widget _buildConfirmPasswordTextField(){

    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        hintText: " Confirm Password",
        
        hintStyle: TextStyle(color: Color(0xFFBDC2CB),fontSize:18.0),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
               _confirmtoggleVisibility = !_confirmtoggleVisibility;
            });
          },
          icon:_confirmtoggleVisibility?Icon(Icons.visibility_off):
          Icon(Icons.visibility),
          ),
      ),
      obscureText: _confirmtoggleVisibility,
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
                  Text("Sign Up ", style: TextStyle(color: Colors.white, fontSize: 30.0),),
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
                        height: 15.0,
                      ),
                        _buildPasswordTextField(),
                      SizedBox(
                        height: 15.0,
                      ),
                       SizedBox(
                        height: 15.0,
                      ),
                      _buildConfirmPasswordTextField(),
                      RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Myhome()));
                    },
                      child: Text("Sign Up"),
                      color: Colors.black,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(" Already have an account ",style: TextStyle(fontSize: 20.0)),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()) );
                          },
                          child: Text("Sign IN", style: TextStyle(color: Colors.red, fontSize: 20.0),))
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
