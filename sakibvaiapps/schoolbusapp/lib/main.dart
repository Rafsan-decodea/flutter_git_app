import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/splash.dart';
// import 'package:myapp/page-1/urban-transport-paper-style-arrangement-1.dart';
// import 'package:myapp/page-1/started-page.dart';
// import 'package:myapp/page-1/sign-in.dart';
// import 'package:myapp/page-1/login.dart';
// import 'package:myapp/page-1/sign-up.dart';
// import 'package:myapp/page-1/track-your-trip.dart';
// import 'package:myapp/page-1/group-33813.dart';
// import 'package:myapp/page-1/status-default-black.dart';
// import 'package:myapp/page-1/the-best-logistic-service-provider.dart';
// import 'package:myapp/page-1/welcome-to.dart';
// import 'package:myapp/page-1/school-bus.dart';
// import 'package:myapp/page-1/arrow-1.dart';
// import 'package:myapp/page-1/home.dart';
// import 'package:myapp/page-1/report.dart';
// import 'package:myapp/page-1/profile.dart';
// import 'package:myapp/page-1/live-watching.dart';
// import 'package:myapp/page-1/bus-tracking.dart';
// import 'package:myapp/page-1/bus-tracking2.dart';
// import 'package:myapp/page-1/online-tracking.dart';
// import 'package:myapp/page-1/payment.dart';
// import 'package:myapp/page-1/notification.dart';
// import 'package:myapp/page-1/report1.dart';
// import 'package:myapp/page-1/report2.dart';
// import 'package:myapp/page-1/report3.dart';
// import 'package:myapp/page-1/group-365.dart';
// import 'package:myapp/page-1/group-34037.dart';
// import 'package:myapp/page-1/offline-tracking.dart';
// import 'package:myapp/page-1/ellipse-2.dart';
// import 'package:myapp/page-1/settings.dart';
// import 'package:myapp/page-1/logout-.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: Scene(),
		),
		),
	);
	}
}
