import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => App(), // Wrap your app
    ),
  );
}

class AppTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text('Hello World!'),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter in Sinhala',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Learn Flutter'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () => {},
            ),
          ],
          flexibleSpace: Image.asset(
            'assets/appbar.jpg',
            fit: BoxFit.cover,
          ),
        ),
        body: Center(
          child: Text(
            'Flutter Sinhala Tutorial',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
