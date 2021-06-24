import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String result = "";

  Widget btn(texttt) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(
    primary: Colors.white, // background
    onPrimary: Colors.black,
padding: const EdgeInsets.all(30.0),
textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),    
    ),
        onPressed: () {
          abc(texttt);
        },
        child: Text(texttt));
  }

  abc(texttt) {
    setState(() {
      result = result + texttt;
    });
  }

  clearr() {
    setState(() {
      result = "";
    });
  }

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
        appBar: AppBar(
          title: Center(child: Text("Calculator") ),

          backgroundColor: Colors.black,
          toolbarHeight: 40,
        ),
      body:
          
          Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Align(
            alignment: Alignment.center,
            child:
            
             Text(
              "$result",
              
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              btn("1"),
              btn("2"),
              btn("3"),
              btn("+"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btn("4"),
              btn("5"),
              btn("6 "),
              btn("-"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btn("7"),
              btn("8"),
              btn("9 "),
              btn("*"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btn("0"),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
    primary: Colors.white,
    padding: const EdgeInsets.all(30.0),
    textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
    onPrimary: Colors.black,),
                onPressed: output, child: Text('=')),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
    primary: Colors.white, 
    onPrimary: Colors.black,
    padding: const EdgeInsets.only(top: 30, bottom: 30),
    textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
    onPressed: clearr, child: Text('Clear')),
              btn("/"),
            ],
          ),
        ],
      ),
      // )
    );
  }
}
