import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/helper_validator.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String _name;
  late String _email;
  late String _password;
  late int _mobile;

  void _onSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print(_name);
      print(_email);
      print(_password);
      print(_mobile);
    } else {
      print('Invalid');
    }
  }

  Widget _buildNameField() {
    return TextFormField(
      maxLength: 50,
      maxLines: 1,
      validator: (text) => HelperValidator.nameValidate(text!),
      decoration: InputDecoration(
        labelText: 'Name',
        hintText: 'Enter Name',
      ),
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      maxLength: 50,
      maxLines: 1,
      validator: (text) => HelperValidator.nameValidate(text!),
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Enter Email',
      ),
      onSaved: (value) {
        _email = value!;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      maxLength: 50,
      maxLines: 1,
      validator: (text) => HelperValidator.nameValidate(text!),
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  Widget _buildMobileNumberField() {
    return TextFormField(
      maxLength: 10,
      keyboardType: TextInputType.number,
      validator: (text) => HelperValidator.nameValidate(text!),
      decoration: InputDecoration(
        labelText: 'Mobile Number',
        hintText: 'Enter Mobile Number',
      ),
      onSaved: (value) {
        _mobile = int.parse(value!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Form',
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.all(24.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildNameField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildEmailField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildPasswordField(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildMobileNumberField(),
                  ),
                  SizedBox(height: 50),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      child: Text(
                        'Submit'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      onPressed: _onSubmit,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
