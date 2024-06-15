import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double num1 = 0, num2 = 0, result = 0;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      result = num1 / num2;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $result",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.lightBlueAccent,
                  onPressed: doAddition,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.lightBlueAccent,
                  onPressed: doSub,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.lightBlueAccent,
                  onPressed: doMul,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.lightBlueAccent,
                  onPressed: doDiv,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text("Clear"),
                  color: Colors.lightBlueAccent,
                  onPressed: doClear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
