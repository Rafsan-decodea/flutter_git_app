import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/pages/customwigets.dart';
import 'package:test_app/pages/gui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class Adding extends StatefulWidget {
  // Adding({this.file, this.task});

  // UploadTask task;
  // File file;
  @override
  _AddingState createState() => _AddingState();
}

class _AddingState extends State<Adding> {
  final _formKey = GlobalKey<FormState>();
  var name = "";
  var email = "";
  var password = "";
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

  clearText() {
    print(name);
    print(email);
    print(password);
    nameController.clear();
    emailController.clear();
    passwordController.clear();
  }

  CollectionReference students =
      FirebaseFirestore.instance.collection('Students');

  Future<void> addUser() {
    return students.add({'name': name, 'email': email, 'password': password});
  }

  File _imageFile;

  ///NOTE: Only supported on Android & iOS
  ///Needs image_picker plugin {https://pub.dev/packages/image_picker}
  final picker = ImagePicker();

  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _imageFile = File(pickedFile.path);
    });
  }

  // Future uploadImageToFirebase(BuildContext context) async {
  //   String fileName = basename(_imageFile.path);
  //   StorageReference firebaseStorageRef =
  //       FirebaseStorage.instance.ref().child('uploads/$fileName');
  //   StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
  //   StorageTaskSnapshot taskSnapshot = await uploadTask.onComplete;
  //   taskSnapshot.ref.getDownloadURL().then(
  //         (value) => print("Done: $value"),
  //       );
  // }

  Widget build(BuildContext context) {
    //  final fileName = file != null ? basename(file!.path) : 'No File Selected';

    return Scaffold(
      appBar: AppBar(
        title: Text("Added a Student "),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Input Select your Image File",
                    ),
                  ),
                ),
                ButtonWidget(
                  text: "Select File",
                  icon: Icons.attach_file,
                  onClicked: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ElevatedButton(
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          name = nameController.text;
                          email = emailController.text;
                          password = passwordController.text;
                          clearText();
                          addUser();
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
