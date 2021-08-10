import 'package:classwork/login.dart';
import 'package:classwork/signup.dart';
import 'package:flutter/material.dart';



class Form extends StatefulWidget {
  // const Form({ Key? key }) : super(key: key);
//
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          
          Container(
            
        child: ListView(
          children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text("button")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("login")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Text("signup")),
          ],
        ),
      )

    );
  }
}
