import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// import 'apps/my_app.dart';
// import 'apps/app_test.dart';
// import 'apps/app.dart';
import 'apps/navigation_app.dart';

void main() {
  // runApp(MyApp());
  // runApp(AppTest());
  // runApp(App());
  // runApp(NavigationApp());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      // builder: (context) => MyApp(), // Wrap your app
      // builder: (context) => AppTest(), // Wrap your app
      // builder: (context) => App(), // Wrap your app
      builder: (context) => NavigationApp(), // Wrap your app
    ),
  );
}
