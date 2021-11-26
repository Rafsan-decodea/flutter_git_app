import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/customwigets.dart';

class Update extends StatefulWidget {
  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _formKey = GlobalKey<FormState>();
  final nameController = new TextEditingController();
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  update() {
    var updatename = nameController.text;
    var updatemail = emailController.text;
    var updatepassword = passwordController.text;
    print(updatepassword);
    print(updatemail);
    print(updatename);
  }

  clearText() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Student Page "),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFiled(
                    name: "Name",
                    secureText: false,
                    onchange: (value) {},
                    textcontroller: nameController,
                    validatorfunction: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter Name";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFiled(
                    name: "Email",
                    secureText: false,
                    textcontroller: emailController,
                    validatorfunction: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter  Email";
                      } else if (!value.contains('@')) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomTextFiled(
                    name: "password",
                    secureText: true,
                    textcontroller: passwordController,
                    validatorfunction: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Enter  Email";
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        child: Text(
                          "Update",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.pop(context);
                            update();
                          }
                        },
                      ),
                      ElevatedButton(
                        child: Text(
                          "Reset",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        onPressed: () {
                          clearText();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}