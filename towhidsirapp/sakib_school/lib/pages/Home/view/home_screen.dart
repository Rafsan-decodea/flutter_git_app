import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sakib_school/Utils/colors.dart';
import 'package:sakib_school/Widget/app_drawer.dart';
//import 'package:sakib_school/Widget/custom_Appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: baseColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Edufly",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
          ),
        ),
        drawer: AppDrawer(),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.w,
          children: [
            InkWell(
                onTap: () {},
                child: deshboardItem(
                    title: " Attendence", imageLInk: "assets/attendance.png")),
            InkWell(
                onTap: () {},
                child: deshboardItem(
                    title: "Take Attendance", imageLInk: "assets/mobile.png")),

            InkWell(
                onTap: () {
                  Get.snackbar(
                    "Sylebbus",
                    "Coming Soon",
                    colorText: Colors.white,
                    backgroundColor: Colors.purple,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: deshboardItem(
                    title: "Syllabus", imageLInk: "assets/syllabus.png")),

            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => DairyPage()));
                },
                child: deshboardItem(
                    title: "Diaries", imageLInk: "assets/diary.png")),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => AddNewDiaryPage()));
                },
                child: deshboardItem(
                    title: "Add New Diary", imageLInk: "assets/add_diary.png")),

            InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder:(_)=>AddStudentLeave()));

                  Get.snackbar(
                    "Add Leave",
                    "Coming Soon",
                    colorText: Colors.white,
                    backgroundColor: Colors.purple,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: deshboardItem(
                    title: "Add Leave", imageLInk: "assets/leave.png")),

            InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(_)=>MobileAttendancePage()));
                  Get.snackbar(
                    "Leave Report",
                    "Coming Soon",
                    colorText: Colors.white,
                    backgroundColor: Colors.purple,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: deshboardItem(
                  title: "Leave Report",
                  imageLInk: "assets/leave.png",
                )),

            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => ExamRoutinePage()));
                  Get.snackbar(
                    "Exam",
                    "Coming Soon",
                    colorText: Colors.white,
                    backgroundColor: Colors.purple,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: deshboardItem(
                  title: "Exam Routine",
                  imageLInk: "assets/routine.png",
                )),
            // InkWell(
            //      onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder:(_)=>AddNewDiaryPage()));
            //   },
            //   child: deshboardItem(title:"Exam Schedule",imageLInk: "assets/routine.png",)),
            InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (_) => ResultSheet()));
                  Get.snackbar(
                    "Exam Result",
                    "Coming Soon",
                    colorText: Colors.white,
                    backgroundColor: Colors.purple,
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: deshboardItem(
                  title: "Exam Result",
                  imageLInk: "assets/result.png",
                )),
          ],
        ),
      ),
    );
  }
}

class deshboardItem extends StatelessWidget {
  final String? title;
  final String? imageLInk;
  final int? height;
  final int? width;
  const deshboardItem(
      {Key? key, this.title, this.imageLInk, this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.0,
      ),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),

            // boxShadow:const [
            //   BoxShadow(
            //     color: primaryColor,
            //    blurStyle: BlurStyle.inner,
            //    blurRadius: 20.0,
            //   offset: Offset(2, 2)
            // )
            // ]
          ),
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 60.w,
                child: imageLInk == null
                    ? Text("No Image")
                    : Image.asset(
                        imageLInk.toString(),
                      ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                title.toString(),
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
                textAlign: TextAlign.center,
              )
            ],
          )),
    );
  }
}

class LDOvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 50, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
