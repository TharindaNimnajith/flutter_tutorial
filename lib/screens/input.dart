import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  TextEditingController controller = TextEditingController();

  String text = 'Default';

  void _handleClose() {
    setState(() {
      text = '';
    });
  }

  void _handleInput(String text) {
    print(text);
  }

  void _handleSubmit(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    controller.text = text;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            // margin: EdgeInsets.symmetric(
            //   horizontal: 10.0,
            //   vertical: 25.0,
            // ),
            // padding: EdgeInsets.symmetric(
            //   horizontal: 5.0,
            //   vertical: 4.0,
            // ),
            child: TextField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.text,
              autofocus: false,
              obscureText: false,
              enabled: true,
              controller: controller,
              style: TextStyle(
                fontSize: 20.0,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: _handleClose,
                ),
                border: InputBorder.none,
                filled: true,
                hintText: 'Search...',
                hintStyle: TextStyle(
                  color: Colors.white30,
                ),
              ),
              onChanged: (text) => _handleInput(text),
              onSubmitted: (text) => _handleSubmit(text),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  autofocus: false,
                  obscureText: false,
                  enabled: true,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                  onChanged: (text) => _handleInput(text),
                  onSubmitted: (text) => _handleSubmit(text),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  autofocus: true,
                  obscureText: true,
                  enabled: true,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                  onChanged: (text) => _handleInput(text),
                  onSubmitted: (text) => _handleSubmit(text),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  maxLength: 10,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  obscureText: false,
                  enabled: false,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                  onChanged: (text) => _handleInput(text),
                  onSubmitted: (text) => _handleSubmit(text),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  maxLength: 100,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  obscureText: false,
                  enabled: true,
                  controller: controller,
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                  ),
                  onChanged: (text) => _handleInput(text),
                  onSubmitted: (text) => _handleSubmit(text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
