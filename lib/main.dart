import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(App());
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: HomeTest(),
    );
  }
}

class HomeTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Test',
        ),
      ),
      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: 200.0,
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
        alignment: Alignment.bottomCenter,
        child: Text(
          'Flutter Tutorial',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
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
          bottomNavigationBar: TabBar(
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
          appBar: AppBar(
            title: Text(
              'Learn Flutter',
            ),
            elevation: 10.0,
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
    // width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Column 1',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Column 2',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Column 3',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
      ],
    ),
  );
}

Widget tab2() {
  return Container(
    // width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Row 1',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Row 2',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
        Text(
          'Row 3',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.lightGreen,
          ),
        ),
      ],
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
