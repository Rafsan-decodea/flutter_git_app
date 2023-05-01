import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  // ...

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentPageIndex = 0;
  final List<String> _images = [
    'https://cdn.pixabay.com/photo/2018/03/11/23/59/sunset-3218412__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/11/23/59/sunset-3218412__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/11/23/59/sunset-3218412__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/11/23/59/sunset-3218412__340.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF2C2C2C),
        appBar: AppBar(
          title: Text(
            'wpims',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 170, 222, 247),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 200,
                      child: PageView(
                        onPageChanged: (int index) {
                          setState(() {
                            _currentPageIndex = index;
                          });
                        },
                        children: _images.map((image) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DotsIndicator(
                    dotsCount: _images.length,
                    position: _currentPageIndex.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(10.0),
                      activeSize: const Size.square(12.0),
                      activeColor: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.person_crop_circle, size: 80),
                              Text("Attendance")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.news, size: 80),
                              Text("Notice")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.payment, size: 80),
                              Text("Payment")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.check_mark_circled, size: 80),
                              Text("Result")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.bookmark, size: 80),
                              Text("Daries")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.timer, size: 80),
                              Text("Routine")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.checkmark_alt, size: 80),
                              Text("Syllebus")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.info_circle, size: 80),
                              Text("About")
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // add your action here
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.book_circle_fill, size: 80),
                              Text("Library")
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
