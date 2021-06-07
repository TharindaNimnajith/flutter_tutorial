import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

// import 'apps/my_app.dart';
// import 'apps/app_test.dart';
// import 'apps/app.dart';
// import 'apps/navigation_app.dart';
// import 'apps/list_app.dart';
// import 'apps/list_tiles_app.dart';
import 'apps/horizontal_list_app.dart';

void main() {
  // runApp(MyApp());
  // runApp(AppTest());
  // runApp(App());
  // runApp(NavigationApp());
  // runApp(ListApp());
  // runApp(ListTilesApp());
  // runApp(HorizontalListApp());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      // Wrap the app
      // builder: (context) => MyApp(),
      // builder: (context) => AppTest(),
      // builder: (context) => App(),
      // builder: (context) => NavigationApp(),
      // builder: (context) => ListApp(),
      // builder: (context) => ListTilesApp(),
      builder: (context) => HorizontalListApp(),
    ),
  );
}
