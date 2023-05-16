import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sakib_school/Student/StdHome/view/std_home.dart';
import 'pages/Login/view/login_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'EduFiy',
      
          theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.black,
            // textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp, 
           
            // ),
          ),
          home: child,
        );
      },
      child: LoginScreen(),
    );
  }
}
