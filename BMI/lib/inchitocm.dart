import 'package:flutter/material.dart';
import 'package:test_app/bmi.dart';

class InchiToCm extends StatefulWidget {
  @override
  _InchiToCmState createState() => _InchiToCmState();
}

class _InchiToCmState extends State<InchiToCm> {
  final inchi_value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inchi To Cm ",
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Convert Feet To Inchi",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
              CustomTextField(
                customcontroller: inchi_value,
                textname: "Enter your Inchi Value",
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
