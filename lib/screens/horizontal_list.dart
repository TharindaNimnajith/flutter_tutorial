import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatefulWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'List',
          ),
        ),
        body: Container(
          height: 150.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 100.0,
                color: Colors.amber,
              ),
              Container(
                width: 100.0,
                color: Colors.blue,
              ),
              Container(
                width: 100.0,
                color: Colors.green,
              ),
              Container(
                width: 100.0,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 100.0,
                color: Colors.white12,
              ),
              Container(
                width: 100.0,
                color: Colors.tealAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
