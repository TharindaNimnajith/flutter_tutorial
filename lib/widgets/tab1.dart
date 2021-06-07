import 'package:flutter/material.dart';

Widget tab1() {
  return Container(
    // width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Column 1',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Column 2',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Column 3',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
      ],
    ),
  );
}
