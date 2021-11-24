import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {this.name, this.textcontroller, this.validatorfunction, this.initvalue});
  String name;
  TextEditingController textcontroller;
  Function validatorfunction;
  String initvalue = "asdasd";

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: initvalue,
      decoration: InputDecoration(
        labelText: name,
        labelStyle: TextStyle(fontSize: 20),
        border: OutlineInputBorder(),
        errorStyle: TextStyle(color: Colors.red),
      ),
      controller: textcontroller,
      validator: validatorfunction,
    );
  }
}

class CustomTest extends StatefulWidget {
  CustomTest(
      {Key key,
      this.title,
      this.name,
      this.textcontroller,
      this.validatorfunction,
      this.initvalue})
      : super(key: key);

  String title;
  String name = "asdasdsad";
  TextEditingController textcontroller;
  Function validatorfunction;
  String initvalue = "aasd";

  @override
  _CustomTestState createState() => _CustomTestState();
}

class _CustomTestState extends State<CustomTest> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: widget.initvalue,
      decoration: InputDecoration(
        labelText: widget.name,
        labelStyle: TextStyle(fontSize: 20),
        border: OutlineInputBorder(),
        errorStyle: TextStyle(color: Colors.red),
      ),
      controller: widget.textcontroller,
      validator: widget.validatorfunction,
    );
  }
}
