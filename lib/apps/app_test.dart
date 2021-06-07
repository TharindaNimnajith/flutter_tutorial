import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../screens/home_test_stateful.dart';
// import '../screens/home_test_stateless.dart';

class AppTest extends StatelessWidget {
  const AppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      // home: HomeTestStateless(),
      home: HomeTestStateful(),
    );
  }
}
