import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../screens/first_page.dart';

class NavigationApp extends StatelessWidget {
  const NavigationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}
