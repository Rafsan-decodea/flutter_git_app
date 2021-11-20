import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Gui extends StatefulWidget {
  @override
  _GuiState createState() => _GuiState();
}

class _GuiState extends State<Gui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        children: [
          CustomButton(
            title: "Hello world",
          ),
          CustomButton(
            title: "Hello world",
          ),
          CustomButton(
            title: "Hello world",
          ),
          CustomButton(
            title: "Hello world",
          ),
        ],
      ),
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
