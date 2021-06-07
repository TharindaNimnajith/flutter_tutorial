import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/tab1.dart';
import '../widgets/tab2.dart';
import '../widgets/tab3.dart';
import '../widgets/tab4.dart';
import '../widgets/tab5.dart';

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
