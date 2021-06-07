import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTiles extends StatefulWidget {
  const ListTiles({Key? key}) : super(key: key);

  @override
  _ListTilesState createState() => _ListTilesState();
}

class _ListTilesState extends State<ListTiles> {
  void _handleTap() {
    print('tapped');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'List Tiles',
          ),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
              Divider(),
              ListTile(
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.white54,
                  ),
                  title: Text(
                    'List Tile Item',
                  ),
                  subtitle: Text(
                    'Go to list tile item',
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white54,
                  ),
                  onTap: _handleTap),
            ],
          ),
        ),
      ),
    );
  }
}
