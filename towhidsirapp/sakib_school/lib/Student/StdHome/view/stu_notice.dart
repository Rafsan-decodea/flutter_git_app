import 'package:flutter/material.dart';

class StuNotice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beautiful Show'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to the Beautiful Show',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Join us for an evening of mesmerizing performances, captivating music, and stunning visual effects.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            // Image.asset(
            //   'assets/show_image.jpg',
            //   width: double.infinity,
            //   height: 200.0,
            //   fit: BoxFit.cover,
            // ),
            SizedBox(height: 16.0),
            Text(
              'Date: May 30, 2023',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Time: 7:00 PM onwards',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
