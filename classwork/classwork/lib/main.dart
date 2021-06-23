import 'package:flutter/material.dart';
import 'package:classwork/home.dart';
import 'package:classwork/app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Home Page',
    home: 
    Scaffold(
      appBar: AppBar(
          title: Center(child: Text("title") ),

          backgroundColor: Colors.red,
          toolbarHeight: 40,
        ),
      body:
      // Text("hello world"),
    Home(),
    ),
    
    
    );
  }
}



