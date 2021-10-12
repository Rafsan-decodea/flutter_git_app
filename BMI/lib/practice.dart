import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final hight = TextEditingController();
  final weight = TextEditingController();
  double calculate;
  String result;

  void _calculate() {
    setState(() {
      calculate = double.parse(weight.text) /
          (double.parse(hight.text) * double.parse(hight.text));

      if (calculate < 18.0) {
        result = "LOW";
      } else if (calculate == 18.0) {
        result = "GOOD";
      } else if (calculate > 18.0) {
        result = "BAD";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text(
          "What is your BMI index",
          style: TextStyle(),
        ),
      )),
      body: Container(
          child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "BMI",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
          CustomTextField(
            customcontroller: hight,
            textname: "Enter your Weight",
            color: Colors.indigo,
          ),
          CustomTextField(
            customcontroller: weight,
            textname: "Enter your Hight inchi",
            color: Colors.indigo,
          ),
          SizedBox(
            width: 100,
            child: RaisedButton(
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
                _calculate();
                if (hight.text == "" && weight.text == "") {
                  showDialog(
                      context: context,
                      builder: (BuildContext a) {
                        return AlertDialog(
                            title: Text("Please Fill Up All information"));
                      });
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext a) {
                        return AlertDialog(
                            title: Center(
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 1),
                                child: Text(
                                  "YOUR BMI INDEX",
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  "${calculate}".substring(1, 8),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 100),
                                child: Text(
                                  " Serverity is  ${result}",
                                ),
                              )
                            ],
                          ),
                        ));
                      });
                }
              },
            ),
          ),
        ],
      )),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.textname,
    this.color,
    this.customcontroller,
  });

  final String textname;
  final Color color;
  TextEditingController customcontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: customcontroller,
        decoration: new InputDecoration(
          labelText: textname,
          fillColor: color,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Field cannot be empty";
          } else {
            return null;
          }
        },
        textAlign: TextAlign.center,
      ),
    );
  }
}

// class TestCustomeTextField extends StatefulWidget {
//   @override
//   _TestCustomeTextFieldState createState() => _TestCustomeTextFieldState();
// }

// class _TestCustomeTextFieldState extends State<TestCustomeTextField> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(11.0),
//       child: TextFormField(
//         keyboardType: TextInputType.number,
//         controller: customcontroller,
//         decoration: new InputDecoration(
//           labelText: textname,
//           fillColor: color,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(15),
//             borderSide: BorderSide(),
//           ),
//           //fillColor: Colors.green
//         ),
//         validator: (val) {
//           if (val.length == 0) {
//             return "Field cannot be empty";
//           } else {
//             return null;
//           }
//         },
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }

