import 'package:flutter/material.dart';
import 'package:hungryman/login.dart';
import 'package:hungryman/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HUNGRY MAN',
      

      home: Form()
    );
  }
}

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


