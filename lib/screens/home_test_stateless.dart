import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTestStateless extends StatelessWidget {
  // const HomeTestStateless({Key? key}) : super(key: key);

  int count = 0;

  // final int count = 0;

  void increment() {
    count++;
    // setState(() {
    //   count++;
    // });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Test',
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          // height: 200.0,
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(30.0),
          // padding: EdgeInsets.symmetric(
          //     horizontal: 10.0,
          //     vertical: 20.0,
          // ),
          // padding: EdgeInsets.only(
          //   bottom: 10.0,
          //   top: 10.0,
          //   left: 10.0,
          //   right: 10.0,
          // ),
          // padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
          // transform: Matrix4.rotationZ(0.2),
          // alignment: Alignment.center,
          child: Text(
            'Count: $count',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: increment,
        ),
      ),
    );
  }
}
