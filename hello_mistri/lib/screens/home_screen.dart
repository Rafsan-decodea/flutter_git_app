import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_youtube_api/models/channel_model.dart';
import 'package:flutter_youtube_api/models/video_model.dart';
import 'package:flutter_youtube_api/screens/video_screen.dart';
import 'package:flutter_youtube_api/services/api_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class Constants{
  static const String about = 'App code by Md Rafsan jani \n  shazidno123@gmail.com \n Phone 01818144463';
  static const List<String> choices = <String>[ about ];
}





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>Route())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
      height: 130.0,
      decoration: BoxDecoration(
  

       //impliment Image

        image: DecorationImage(
             
            // image: NetworkImage("https://thumbs.dreamstime.com/b/web-189206689.jpg"),  fit: BoxFit.cover,
            image: new AssetImage('assets/hello.gif'),fit: BoxFit.cover,         
           // image: FileImage(File("assets/puck.png")),
        ),
    
      ),

        ),
      ),
    );
  }
}



// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   Channel _channel;
//   bool _isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     _initChannel();
//   }

//   _initChannel() async {
//     Channel channel = await APIService.instance
//         .fetchChannel(channelId: 'UCPkWBGO9aSUj8gg-X2yS3vA');
//     setState(() {
//       _channel = channel;
//     });
//   }

//   _buildProfileInfo() {
//     return Container(
//       margin: EdgeInsets.all(20.0),
//       padding: EdgeInsets.all(20.0),
//       height: 130.0,
//       decoration: BoxDecoration(
//         color: Colors.yellow,

//        //impliment Image

//         image: DecorationImage(
             
//              image: NetworkImage("https://i.ibb.co/dKRQbLW/gifntext-gif.gif"),  fit: BoxFit.cover,
            
//         ),
     
      
        
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             offset: Offset(6, 1),
//             //blurRadius: 6.0,
//           ),
//         ],
//       ),
//       child: Row(
                  
//         children: <Widget>[

   
//          SizedBox(
//            width: 270.0,
//            height: 300.0,
//            child:RaisedButton(
//           color: Colors.blueAccent.withOpacity(0.0),
//             onPressed:(){
//               Navigator.push(
//             context,
//              MaterialPageRoute(builder: (_) => Route() 
             
//              ),
//            );
//          },
//          ),

//           ),




//           // Container(
//           //           alignment: Alignment(1, -1.4), 
//           //       child: Text(
//           //         "দিগন্ত থেকে দিগন্তে",
//           //          textAlign: TextAlign.right,
//           //         style: TextStyle(
//           //           color: Colors.black,
//           //           fontSize: 20.0,
                    
//           //           fontWeight: FontWeight.w600,
//           //         ),
//           //       ),
//           //    ),


            
             
             
          

          

//           // CircleAvatar(
//           //   backgroundColor: Colors.red,
//           //   // radius: 100.0,
            
//           //   backgroundImage: NetworkImage(_channel.profilePictureUrl),
//           // ),
       
//         //  ClipOval(
             
//         //      child: Image.network(
//         //        _channel.profilePictureUrl,
//         //        width: 200,
//         //        height: 200,
//         //        fit: BoxFit.cover,
//         //      ),

//         //  ),

//       //  DecoratedBox(
//       //    decoration: BoxDecoration(
//       //        image: DecorationImage(image: NetworkImage(_channel.profilePictureUrl), fit: BoxFit.fill),

//       //      )
         
//       //    ),
   
    

//          // SizedBox(width: 12.0),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                //Name of Channel title

//                 // Text(
//                 //   _channel.title,
//                 //   textAlign: TextAlign.start,
//                 //   style: TextStyle(
//                 //     color: Colors.white,
//                 //     fontSize: 20.0,
//                 //     fontWeight: FontWeight.w600,
//                 //   ),
//                 //  // overflow: TextOverflow.ellipsis,
//                 // ),
              
//               // Name OF Hello TV Subscriver


//                 // Text(
//                 //   '${_channel.subscriberCount} subscribers',
//                 //   style: TextStyle(
//                 //     color: Colors.red,
//                 //     backgroundColor: Colors.blue,
//                 //     fontSize: 16.0,
//                 //     fontWeight: FontWeight.w600,
//                 //   ),
//                 //   overflow: TextOverflow.ellipsis,
//                 // ),
//               ],
//             ),
//           )
//         ],
//       ),

//     );
    
    
//   }

//   _buildVideo(Video video) {
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (_) => VideoScreen(id: video.id),
//         ),
//       ),
//       child: Container(
//         margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
//         padding: EdgeInsets.all(10.0),
//         height: 140.0,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black,
//               offset: Offset(10,5),
//               blurRadius: 2.0,
//             ),
//           ],
//         ),
//         child: Row(
//           children: <Widget>[
//             Image(
//               width: 150.0,
//               image: NetworkImage(video.thumbnailUrl),
//             ),
//             SizedBox(width: 10.0),
//             Expanded(
//               child: Text(
//                 video.title,
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18.0,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   _loadMoreVideos() async {
//     _isLoading = true;
//     List<Video> moreVideos = await APIService.instance
//         .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
//     List<Video> allVideos = _channel.videos..addAll(moreVideos);
//     setState(() {
//       _channel.videos = allVideos;
//     });
//     _isLoading = false;
//   }
//   void ChoiseAction(String choise)
//   {
    
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Center(child:Text('Hello TV',
//           style: TextStyle(
//              color: Colors.white,
//              fontSize: 30.0,
//             fontWeight: FontWeight.w900,
//           ),
//         ),),
//         backgroundColor: Colors.black,
//         actions: <Widget>[
//           PopupMenuButton<String>(
//             onSelected: ChoiseAction,
//             itemBuilder: (BuildContext context){
//               return Constants.choices.map((String choice){
//                    return PopupMenuItem<String>(
//                      value: choice,
//                      child: Text(choice),
//                    );
//               }).toList();
//             },
//           )
//         ],
//       ),
//       backgroundColor: Colors.amber,
//       body: _channel != null
//           ? NotificationListener<ScrollNotification>(
//               onNotification: (ScrollNotification scrollDetails) {
//                 if (!_isLoading &&
//                     _channel.videos.length != int.parse(_channel.videoCount) &&
//                     scrollDetails.metrics.pixels ==
//                         scrollDetails.metrics.maxScrollExtent) {
//                   _loadMoreVideos();
//                 }
//                 return false;
//               },
//               child:Column(
//                  children: <Widget>[
//             SizedBox(
//               width: 300.0,
//               child:RaisedButton(
//             padding: const EdgeInsets.all(8.0),
//             textColor: Colors.white,
//              color: Colors.black26,
//             child:Text('View Our Website',
//                   style: TextStyle(
//                       fontSize: 20.0,   
                      
//                   ),
//             ),
//             onPressed:(){
//               Navigator.push(
//             context,
//              MaterialPageRoute(builder: (_) => Route() 
             
//              ),
//            );
//          },
//          ),

//           ),

          
//           Expanded(child: 
//                 ListView.builder(
                
//                 itemCount: 1 + _channel.videos.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   if (index == 0) {
//                     return _buildProfileInfo();
//                   }
//                   Video video = _channel.videos[index - 1];
//                   return _buildVideo(video);
//                 },
//               ),
//           ),    
//                  ]
//               ) 
              
              
//             )
//           : Center(
//               child: CircularProgressIndicator(
//                 valueColor: AlwaysStoppedAnimation<Color>(
//                   Theme.of(context).primaryColor, // Red
//                 ),
//               ),
//             ),
//     );
//   }
// }



class Route extends StatefulWidget {
  @override
  _RouteState createState() => _RouteState();
}


 void ChoiseAction(String choise)
  {
    
  }

class _RouteState extends State<Route> {
  bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Hello TV",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Welcome to Hello TV",
            style: TextStyle(
             color: Colors.white,
             fontSize: 25.0,
            fontWeight: FontWeight.w900,
            
          ),
        )
       ),
            backgroundColor: Colors.black,
            actions: <Widget>[
   
           PopupMenuButton<String>(
            onSelected: ChoiseAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                   return PopupMenuItem<String>(
                     value: choice,
                     child: Text(choice),
                   );
              }).toList();
            },
          ),

            ]
          ),
          body:Center(child: Container(

           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[



          ButtonTheme(
                 
               minWidth: 250.0,
               height: 50.0,
               child: RaisedButton(
                
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
             color: Colors.brown,
                child: Text(
                  "Live",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => live() 
             
             ),
           );
         },
                
            ),
          ),  


       ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),







             ButtonTheme(
                 
               minWidth: 250.0,
               height: 50.0,
               child: RaisedButton(
                
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
              color: Colors.brown,
                child: Text(
                  "Website",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => website() 
             
             ),
           );
         },
                
            ),
          ),  


      ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),


        ButtonTheme(
           minWidth: 250.0,
            height: 50.0,
            child: RaisedButton(
              padding:EdgeInsets.only(top: 5),
            textColor: Colors.white,
              color: Colors.brown,
                child: Text(
                  " Facebook",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => facebook() 
             
             ),
           );
         },
            ),
        ),




      ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),



       ButtonTheme(
               minWidth: 250.0,
               height: 50.0,
           child:  RaisedButton(
                
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
              color: Colors.brown,
                child: Text(
                  "Youtube",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => youtube() 
             
             ),
           );
         },
                
        )
       ,

       ),
    
     
      ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),



       ButtonTheme(
               minWidth: 250.0,
               height: 50.0,
           child:  RaisedButton(
                
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
              color: Colors.brown,
                child: Text(
                  "About Apps",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => about() 
             
             ),
           );
         },
                
        )
       ,

       ),
      
      
       
   

         ]
       )
    
    )
  )
          

   )


);
  

  }
}






class website extends StatefulWidget {
  @override
  _websiteState createState() => _websiteState();
}

class _websiteState extends State<website> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Hello tv Website",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children:<Widget>[
              WebView(
                initialUrl:'https://hellotv.live',
                javascriptMode:JavascriptMode.unrestricted,
                onPageFinished:(String url){
                  setState((){
                     isLoad=false;
                  });
                },
              ),
              isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
              ):Stack()
              ]
          ),
      )
    );
  }
}










class youtube extends StatefulWidget {
  @override
  _youtubeState createState() => _youtubeState();
}

class _youtubeState extends State<youtube> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Hello tv Youtube",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children:<Widget>[
              WebView(
                initialUrl:'https://www.youtube.com/channel/UCPkWBGO9aSUj8gg-X2yS3vA',
                javascriptMode:JavascriptMode.unrestricted,
                onPageFinished:(String url){
                  setState((){
                     isLoad=false;
                  });
                },
              ),
              isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
              ):Stack()
              ]
          ),
      )
    );
  }
}





class facebook extends StatefulWidget {
  @override
  _facebookState createState() => _facebookState();
}

class _facebookState extends State<facebook> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Hello tv Facebook ",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children:<Widget>[
              WebView(
                initialUrl:'https://m.facebook.com/Hello-Tv-%E0%A6%B9%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%B2%E0%A7%8B-%E0%A6%9F%E0%A6%BF%E0%A6%AD%E0%A6%BF-105267991564668/',
                javascriptMode:JavascriptMode.unrestricted,
                onPageFinished:(String url){
                  setState((){
                     isLoad=false;
                  });
                },
              ),
              isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
              ):Stack()
              ]
          ),
      )
    );
  }
}



class live extends StatefulWidget {
  @override
  _liveState createState() => _liveState();
}

class _liveState extends State<live> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Hello tv Live ",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children:<Widget>[
              WebView(
                initialUrl:'https://www.youtube.com/embed/CJRc9KzGJkw',
                javascriptMode:JavascriptMode.unrestricted,
                onPageFinished:(String url){
                  setState((){
                     isLoad=false;
                  });
                },
              ),
              isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
              ):Stack()
              ]
          ),
      )
    );
  }
}







class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("About Apps ",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
          
            children: <Widget>[
                
                Container(
                 height: 130.0,
                 decoration: BoxDecoration(
                 image: DecorationImage(
             
            // image: NetworkImage("https://thumbs.dreamstime.com/b/web-189206689.jpg"),  fit: BoxFit.cover,
                    image: new AssetImage('assets/hello_mistri.jpg'),fit: BoxFit.none,         
           // image: FileImage(File("assets/puck.png")),
                 ),
                
                ),
  
              ),

           Text(
                "Hello TV APP Power by HELLO MISTRI",
           ),

    ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),
         
              Container(
                 height: 130.0,
                 decoration: BoxDecoration(
                 image: DecorationImage(
             
            // image: NetworkImage("https://thumbs.dreamstime.com/b/web-189206689.jpg"),  fit: BoxFit.cover,
                    image: new AssetImage('assets/me.png'),fit: BoxFit.contain,         
           // image: FileImage(File("assets/puck.png")),
                 ),
                
                ),
  
              ),


          Text("Apps Code By MD Rafsan jani"),


   ButtonTheme(
         minWidth: 1.0,
            height: 1.0,
          child: RaisedButton(onPressed: null),
      ),


      ButtonTheme(
               minWidth: 250.0,
               height: 50.0,
           child:  RaisedButton(
                
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
              color: Colors.brown,
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,  
                      
                  ),
                ),
                
                onPressed: (){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => privacy() 
             
             ),
           );
         },
                
        )
       ,

       ),


            ],

            
          )
        )
      )
    );
  }
}



class privacy extends StatefulWidget {
  @override
  _privacyState createState() => _privacyState();
}

class _privacyState extends State<privacy> {
    bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Channel",
      debugShowCheckedModeBanner: false,
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Privacy Policy ",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children:<Widget>[
              WebView(
                initialUrl:'https://hello-tv.flycricket.io/privacy.html',
                javascriptMode:JavascriptMode.unrestricted,
                onPageFinished:(String url){
                  setState((){
                     isLoad=false;
                  });
                },
              ),
              isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
              ):Stack()
              ]
          ),
      )
    );
  }
}






// Stack(
//             children:<Widget>[

//                Text(
//                  "HElllo ",
//                ),

//               WebView(
//                 initialUrl:'https://hello-tv.flycricket.io/privacy.html',
//                 javascriptMode:JavascriptMode.unrestricted,
//                 onPageFinished:(String url){
//                   setState((){
//                      isLoad=false;
//                   });
//                 },
//               ),
//               isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
//               ):Stack()
//               ]
//           ),


// Stack(
//             children:<Widget>[
               
//              WebView(
//                 initialUrl:'https://www.youtube.com/channel/UCPkWBGO9aSUj8gg-X2yS3vA',
//                 javascriptMode:JavascriptMode.unrestricted,
//                 onPageFinished:(String url){
//                   setState((){
//                      isLoad=false;
//                   });
//                 },
//               ),
//               isLoad ? SpinKitPulse(color:Colors.green , size:200,
              
//               ):Stack()
//               ]
//           ),




// class Route extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//        title:"CHANNEL",
//        home: Scaffold(
//         appBar: AppBar(
//           title:Center(
//             child:Text("Channel Star BD  Website ",),),
//             backgroundColor: Colors.red,
//         ),
//         body: Center(
//           child:WebView(
//           initialUrl: "https://channelstarbd.com",
//           javascriptMode: JavascriptMode.unrestricted,
//       ),
//         ),
//       ),
//     );
//   }

  
// }


