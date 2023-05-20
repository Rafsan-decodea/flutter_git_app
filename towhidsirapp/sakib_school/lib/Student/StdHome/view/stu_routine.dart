import 'package:flutter/material.dart';

class StudentRoutin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routine Option'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a Routine Option',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Morning Routine'),
              subtitle: Text('Start your day with a morning routine'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text('Workout Routine'),
              subtitle:
                  Text('Follow a workout routine for a healthy lifestyle'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.nightlight_round),
              title: Text('Evening Routine'),
              subtitle: Text('Wind down with an evening routine'),
              onTap: () {
                // Add your action here
              },
            ),
          ],
        ),
      ),
    );
  }
}
