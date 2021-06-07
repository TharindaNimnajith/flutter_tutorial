import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int count = 0;

  void _navigate() {
    Navigator.pop(
        context,
        FirstPage(
          title: 'FirstPage',
        ));
  }

  void _increment() {
    // count++;
    setState(() {
      count++;
    });
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
          leading: IconButton(
            icon: Icon(
              Icons.home,
            ),
            onPressed: _navigate,
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
          onPressed: _increment,
        ),
      ),
    );
  }
}
