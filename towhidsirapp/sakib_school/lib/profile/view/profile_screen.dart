import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
       
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 50.r,
                child: Image.asset("assets/person.png"),
              ), 
              Container(
                child: Column(
                  children: [
                     Container(
            child: Text(
              "Waleed Amin",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
          ),
                  ],
                ),
              )
            ],
          ), 
          SizedBox(
            height: 20.h,
          ),
          ProfileItem(
            title: "Profile Info:",
            value: "Waleed Amin",
            space: 15.w,
          ),
           ProfileItem(
            title: "Full Name:",
            value: "Waleed Amin",
             space: 15.w,
          ),
           ProfileItem(
            title: "Phone:",
            value: "01822909090",
             space: 15.w,
          ), ProfileItem(
            title: "Email:",
            value: "WaleedAmin@gmail.com",
             space: 15.w,
          )
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  String? title;
  String? value;
  double? space;

  ProfileItem({
    super.key,
    this.title, this.value, this.space
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              title??"Title",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
          ),
         
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              value??"Value",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
