import 'package:flutter/material.dart';

class StudentDaires extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diaries Option'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a Diary Option',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Personal Diary'),
              subtitle: Text('Write and manage your personal diary'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Work Diary'),
              subtitle: Text('Keep track of work-related tasks and notes'),
              onTap: () {
                // Add your action here
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Study Diary'),
              subtitle: Text('Record your study progress and notes'),
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
