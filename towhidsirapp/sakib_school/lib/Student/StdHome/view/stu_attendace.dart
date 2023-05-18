import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:dots_indicator/dots_indicator.dart';
//import 'package:cupertino_icons/cupertino_icons.dart';
//import 'package:sakib_school/Utils/constant.dart';

//import '../../../Utils/colors.dart';

class StudentAttandance extends StatefulWidget {
  const StudentAttandance({super.key});

  @override
  State<StudentAttandance> createState() => _StudentAttandanceState();
}

class _StudentAttandanceState extends State<StudentAttandance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asd"),
      ),
      body: ListView(
        children: [
          StudentAttendanceCard(
            name: 'John Doe',
            id: '123456',
            registrationNumber: 'ABC123',
            attendancePercentage: 85.5,
            image:
                'https://cdn.pixabay.com/photo/2018/03/11/23/59/sunset-3218412__340.jpg',
            attendanceSummary: AttendanceSummary(
              totalDays: 30,
              presentDays: 25,
              absentDays: 5,
            ),
          ),

          // Add more StudentAttendanceCard widgets as needed
        ],
      ),
    );
  }
}

class StudentAttendanceCard extends StatelessWidget {
  final String name;
  final String id;
  final String registrationNumber;
  final double attendancePercentage;
  final String image;
  final AttendanceSummary attendanceSummary;

  const StudentAttendanceCard({
    required this.name,
    required this.id,
    required this.registrationNumber,
    required this.attendancePercentage,
    required this.image,
    required this.attendanceSummary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text('ID: $id'),
                    Text('Registration Number: $registrationNumber'),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Attendance Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: [
                DataColumn(label: Text('Total Days')),
                DataColumn(label: Text('Present Days')),
                DataColumn(label: Text('Absent Days')),
                DataColumn(label: Text('Attendance Percentage')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(attendanceSummary.totalDays.toString())),
                  DataCell(Text(attendanceSummary.presentDays.toString())),
                  DataCell(Text(attendanceSummary.absentDays.toString())),
                  DataCell(Text('${attendancePercentage.toStringAsFixed(1)}%')),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AttendanceSummary {
  final int totalDays;
  final int presentDays;
  final int absentDays;

  AttendanceSummary({
    required this.totalDays,
    required this.presentDays,
    required this.absentDays,
  });
}
