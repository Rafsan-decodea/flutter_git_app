import 'package:flutter/material.dart';

void snackBar(String text, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: Colors.teal,
    ),
  );
}
