import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'second_page.dart';

// public class
class FirstPage extends StatefulWidget {
  FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _FirstPageState createState() => _FirstPageState();
}

// private class
class _FirstPageState extends State<FirstPage> {
  int _counter = 0;

  void _navigate() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return SecondPage('String');
    }));
    // Navigator.of(context).pushNamed('/second_page');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _navigate,
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
