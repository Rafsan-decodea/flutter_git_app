import 'package:flutter/material.dart';
import 'package:test_app/bmi.dart';

class InchiToCm extends StatefulWidget {
  @override
  _InchiToCmState createState() => _InchiToCmState();
}

class _InchiToCmState extends State<InchiToCm> {
  final feet_value = TextEditingController();
  double calculate;

  void _convert_meter() {
    calculate = double.tryParse(feet_value.text) / 38.28;
  }

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
                customcontroller: feet_value,
                textname: "Enter your Feet Value",
                color: Colors.blueAccent,
              ),
              RaisedButton(
                child: Text(
                  "See Result ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                onPressed: () {
                  _convert_meter();
                  showDialog(
                    context: context,
                    builder: (BuildContext a) {
                      return AlertDialog(
                        title: Text(
                          "${calculate.toStringAsFixed(2)}",
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
