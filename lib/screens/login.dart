
import 'package:firebasede/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

 

import 'authen.dart';



class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dispen'),
      ),
     body: Center(
       

      //padding:  EdgeInsets.all(25),  
      child: GoogleSignInButton(
        borderRadius: 10,
        onPressed: () => signInwithGoogle().then((value) {
          if(value!=null){
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute( builder: (context)=>HomePage()
              ),
               (route) => false);
          }
        })
        ),
    ),
    );
  }
}
