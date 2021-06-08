import 'Home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override

 Widget build(BuildContext context) {
    
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(child: Text("login page") ),

          backgroundColor: Colors.black,
          toolbarHeight: 40,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(height: 20,),
            Container(
              width: 300,

              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
              ),
              
              
            ),
            // SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(top: 60),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
              ),
              
              
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
     primary: Colors.red, // background
     onPrimary: Colors.black, // foreground
  ),
              onPressed: (){
                Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
              }, child: Text("login"),
             )
          ],),
        ),
      ),
    );
  }
}