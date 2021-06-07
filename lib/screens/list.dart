import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({Key? key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'List',
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200.0,
              color: Colors.amber,
            ),
            Container(
              height: 200.0,
              color: Colors.blue,
            ),
            Container(
              height: 200.0,
              color: Colors.green,
            ),
            Container(
              height: 200.0,
              color: Colors.deepPurpleAccent,
            ),
            Container(
              height: 200.0,
              color: Colors.white12,
            ),
            Container(
              height: 200.0,
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
