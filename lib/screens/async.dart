import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Async extends StatefulWidget {
  const Async({Key? key}) : super(key: key);

  @override
  _AsyncState createState() => _AsyncState();
}

class _AsyncState extends State<Async> {
  // simulate network request
  void getData() async {
    String email = await Future.delayed(Duration(seconds: 3), () {
      return 'tharindarajapakshe@y7mail.com';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'name: Tharinda, age: 23';
    });
    print(email + ' - ' + bio);
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Asynchronous Programming',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Network Request',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            ElevatedButton(
              child: Text(
                'Get Data',
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
