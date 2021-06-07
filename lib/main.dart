import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
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
      home: Text(
        'Hello World!',
      ),
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
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Learn Flutter',
            ),
            elevation: 20.0,
            backgroundColor: Colors.green,
            // flexibleSpace: Image.asset(
            //   'assets/appbar.jpg',
            //   fit: BoxFit.cover,
            // ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () => {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: () => {},
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.directions_bike,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_boat,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_car,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_railway,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              tab1(),
              tab2(),
              tab3(),
              tab4(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tab1() {
  return Container(
    child: Center(
      child: Text(
        'Tab 1',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.lightGreen,
        ),
      ),
    ),
  );
}

Widget tab2() {
  return Container(
    child: Center(
      child: Text(
        'Tab 2',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.lightGreen,
        ),
      ),
    ),
  );
}

Widget tab3() {
  return Container(
    child: Center(
      child: Text(
        'Tab 3',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.lightGreen,
        ),
      ),
    ),
  );
}

Widget tab4() {
  return Container(
    child: Center(
      child: Text(
        'Tab 4',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.lightGreen,
        ),
      ),
    ),
  );
}
