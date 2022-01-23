import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {Key key,
      this.name,
      this.textcontroller,
      this.validatorfunction,
      this.initvalue,
      this.secureText,
      this.onchange})
      : super(key: key);
  String name;
  TextEditingController textcontroller;
  Function validatorfunction;
  String initvalue;
  bool secureText;
  Function onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: initvalue,
      obscureText: secureText,
      onChanged: onchange,
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

class ButtonWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key key,
    this.icon,
    this.text,
    this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromRGBO(29, 194, 95, 1),
          minimumSize: Size.fromHeight(50),
        ),
        child: buildContent(),
        onPressed: onClicked,
      );

  Widget buildContent() => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 28),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      );
}
