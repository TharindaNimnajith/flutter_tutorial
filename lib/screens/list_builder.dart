import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBuilder extends StatefulWidget {
  const ListBuilder({Key? key}) : super(key: key);

  @override
  _ListBuilderState createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  var items = List<String>.generate(100, (index) => 'Item $index');

  void _handleTap() {
    print('tapped');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'List',
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
                leading: Icon(
                  Icons.admin_panel_settings_outlined,
                  color: Colors.white54,
                ),
                title: Text(
                  items[index],
                ),
                subtitle: Text(
                  'Go to list tile item',
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.white54,
                ),
                onTap: _handleTap);
          },
        ),
      ),
    );
  }
}
