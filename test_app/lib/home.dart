import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/pages/adding.dart';
import 'package:test_app/pages/gui.dart';
import 'package:test_app/pages/update.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('Students').snapshots();

  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.push(context, MaterialPageRoute(builder: (context) => Gui()));
  //   });
  // }

  Future<void> go() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => Gui()));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: studentsStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          print("Some Thing is Error");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.black,
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Rafsab Curd Program",
                      style: TextStyle(
                          fontSize: 29,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircularProgressIndicator(color: Colors.green)
                  ],
                ),
              ),
            ),
          );
        }
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Gui()),
            );
          },
        );
      },
    );
  }
}
