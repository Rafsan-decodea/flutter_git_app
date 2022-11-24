import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 1500,
        splash: Icons.shop,

        // splash: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image.asset("lib/images/dubai.png"),
        //   ],
        // ),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 150,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late WebViewController controller;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dubai Shop Bd App",
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromARGB(255, 226, 46, 85),
      ),
      body: Stack(
        children: <Widget>[
          WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: 'https://dubaishopbd.com',
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.red,
                    strokeWidth: 6.0,
                  ),
                )
              : Stack(),
          Align(
            alignment: Alignment(-0.90, 0.9),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Ink(
                decoration: const ShapeDecoration(
                  color: Color.fromARGB(255, 210, 10, 245),
                  shape: CircleBorder(),
                ),
                child: FloatingActionButton(
                  onPressed: () async {
                    controller.goBack();
                  },
                  backgroundColor: Colors.red,
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.50, 0.9),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: FloatingActionButton(
                onPressed: () async {
                  controller.reload();
                },
                backgroundColor: Colors.red,
                child: Icon(const IconData(0xe514,
                    fontFamily: 'MaterialIcons')), //reload Icone data
              ),
            ),
          )
        ],
      ),
    );
  }
}
