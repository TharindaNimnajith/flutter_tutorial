import 'package:flutter/material.dart';

void main() {
  runApp(App2());
}

class App1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello World!'),
    );
  }
}

class App2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
        ),
        body: Center(
          child: Text(
            "Flutter Sinhala Tutorial",
            style: TextStyle(fontSize: 50.0),
          ),
        ),
      ),
    );
  }
}
