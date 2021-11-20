import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

void main() {
  runApp(homeApp());
}

class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home2",
      home: Home(),
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton({
    this.title,
  });

  dynamic title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(80), bottomRight: Radius.circular(80)),
      child: Card(
        child: Container(
          alignment: Alignment.center,
          color: Colors.green,
          child: Text(title, style: GoogleFonts.lato(fontSize: 24)),
        ),
      ),
    );
  }
}
