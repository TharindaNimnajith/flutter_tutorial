import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '../screens/list_builder.dart';

class ListBuilderApp extends StatelessWidget {
  const ListBuilderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter in Sinhala',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: ListBuilder(),
    );
  }
}
