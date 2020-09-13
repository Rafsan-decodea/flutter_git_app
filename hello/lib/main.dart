import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:webview_flutter/webview_flutter.dart';


void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar:AppBar(
      title:Text('Channel Star BD'),
      centerTitle:true,
      backgroundColor : Colors.red[600],
    ),  //app bar
    body: WebView(
      initialUrl: 'https://channelstarbd.com',
      javascriptMode: JavascriptMode.unrestricted,

    ),
   
 
  ),
),
);
