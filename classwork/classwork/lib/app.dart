import 'package:flutter/material.dart';

class App extends StatefulWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: Text("pop")) 
      // Container(
      //   child: Text("button"),
      // ),
    );
  }
}
