import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(App());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

// public class
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// private class
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

class AppTest extends StatelessWidget {
  const AppTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.dark,
      ),
      home: HomeTestStateful(),
    );
  }
}

// ignore: must_be_immutable
class HomeTestStateless extends StatelessWidget {
  // const HomeTestStateless({Key? key}) : super(key: key);

  int count = 0;

  // final int count = 0;

  void increment() {
    count++;
    // setState(() {
    //   count++;
    // });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Test',
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          // height: 200.0,
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
          // alignment: Alignment.center,
          child: Text(
            'Count: $count',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: increment,
        ),
      ),
    );
  }
}

class HomeTestStateful extends StatefulWidget {
  const HomeTestStateful({Key? key}) : super(key: key);

  @override
  _HomeTestStatefulState createState() => _HomeTestStatefulState();
}

class _HomeTestStatefulState extends State<HomeTestStateful> {
  int count = 0;

  void increment() {
    // count++;
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flutter Test',
          ),
        ),
        body: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          // height: 200.0,
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
          // alignment: Alignment.center,
          child: Text(
            'Count: $count',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: increment,
        ),
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

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
  const Home({Key? key}) : super(key: key);

  void openMainMenu() {
    print('Open main menu');
  }

  void search() {
    print('Search');
  }

  void openSubMenu() {
    print('Open sub menu');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
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
              Tab(
                icon: Icon(
                  Icons.directions_bus,
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
              onPressed: openMainMenu,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: search,
              ),
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                ),
                onPressed: openSubMenu,
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
                Tab(
                  icon: Icon(
                    Icons.directions_bus,
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
              tab5(),
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
        Column(
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
      ],
    ),
  );
}

Widget tab4() {
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
        Row(
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
      ],
    ),
  );
}

Widget tab5() {
  return Container(
    child: Center(
      child: Text(
        'Tab 5',
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.lightGreen,
        ),
      ),
    ),
  );
}
