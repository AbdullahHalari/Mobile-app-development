import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
              margin: EdgeInsets.only(top: 20),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
              ),
              
              
            ),
            // SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
    primary: Colors.red, // background
    onPrimary: Colors.black, // foreground
  ),
              onPressed: (){}, child: Text("login"),
             )
          ],),
        ),
      ),
    );
  }
}
