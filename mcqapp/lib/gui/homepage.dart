import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon/neon.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170),
          child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.indigo,
              flexibleSpace: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Neon(
                      text: 'MCQ Question BCS Question',
                      color: Colors.cyan,
                      fontSize: 20,
                      font: NeonFont.Monoton,
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      flickeringText: true,
                      flickeringLetters: [0, 11],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("The Best Sloution from BCS ",
                        style: GoogleFonts.alexBrush(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RaisedButton(
                            child: Text('Login '),
                            onPressed: () {},
                          ),
                          RaisedButton(
                            child: Text('Register'),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ),
        body: Column(
          children: [
            Text("Hello world"),
          ],
        ));
  }
}
