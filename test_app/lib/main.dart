import 'package:flutter/material.dart';


void main()
{
  runApp(homeApp());
}

class homeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "home2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Column(
          
          children: <Widget>[
            Text(
              "Hi"
            ),
          ],
        ),
      )
    ) ;
  }
}