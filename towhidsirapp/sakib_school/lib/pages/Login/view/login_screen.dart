import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sakib_school/Student/StdHome/view/std_home.dart';
import 'package:sakib_school/Utils/colors.dart';
import 'package:sakib_school/Utils/constant.dart';
import 'package:sakib_school/Widget/customButtonOne.dart';
import 'package:sakib_school/Widget/customTextForm.dart';

import '../../Home/view/home_screen.dart';

//https://interstellar-crescent-429107.postman.co/workspace/Team-Workspace~b01cf9a3-fa52-43c9-89e8-dba70ff2d7a7/collection/26517368-7392c0ac-b875-4be7-aa41-28937e5f277c?ctx=documentation
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150.h,), 
              Container(
                height: 150.h, 
                width: 150.w,
               child:Image.asset("assets/edufiy.png")
              ), 
               SizedBox(height: 70.h,), 
              _textInputForm(controller: email, hint: "Enter your ID", icon: Icon(Icons.email)),
              SizedBox(
                height: 20.h,
              ),
              _textInputForm(controller: password, hint: "Enter your password", 
              icon: Icon(Icons.lock)
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButtonOne(
                  title: "Login",
                  btnColor: navyBlueColor,
                  marginLR: 80.w,
                  radius: 20.sp,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  onTab: () {
                    print("Login");
                    if(email.text=="teacher@gmail.com"){
          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                                if(email.text=="student@gmail.com"){
          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StudentHome()));
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _textInputForm({controller, hint, icon, inputAction, userErrorText}) {
  return Container(
    alignment: Alignment.center,
    height: 45.h,
    margin: const EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.r))),
    child: TextFormField(
      textInputAction: inputAction,
      validator: (value) {
        if (value!.isEmpty) {
          return userErrorText;
        } else {
          return null;
        }
      },
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
        hintStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          gapPadding: 4.6,
        ),
      ),
    ),
  );
}
