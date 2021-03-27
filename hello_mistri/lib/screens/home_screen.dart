import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_youtube_api/models/channel_model.dart';
import 'package:flutter_youtube_api/models/video_model.dart';
import 'package:flutter_youtube_api/screens/video_screen.dart';
import 'package:flutter_youtube_api/services/api_service.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Constants{
  static const String about = 'App made by Md Rafsan jani \n  shazidno123@gmail.com ';
  static const List<String> choices = <String>[ about ];
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Channel _channel;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initChannel();
  }

  _initChannel() async {
    Channel channel = await APIService.instance
        .fetchChannel(channelId: 'UCPkWBGO9aSUj8gg-X2yS3vA');
    setState(() {
      _channel = channel;
    });
  }

  _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      height: 130.0,
      decoration: BoxDecoration(
        color: Colors.white,

       //impliment Image

        image: DecorationImage(
             
             image: NetworkImage("https://s1.mzstatic.com/us/r30/Purple/v4/d0/ee/c3/d0eec337-987e-24ee-9c87-39b326d7bd5d/mzl.msoorhcd.png"),  fit: BoxFit.cover,

        ),
     
       
        
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(6, 1),
            //blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[

          Align(
             
             alignment: Alignment(1,-1),

            
            child: Container(
                    alignment: Alignment(1, -1.5), 
                child: Text(
                  "দিগন্ত থেকে দিগন্ত",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
             ),


            
             
             
            
          ) ,

          

          // CircleAvatar(
          //   backgroundColor: Colors.red,
          //   // radius: 100.0,
            
          //   backgroundImage: NetworkImage(_channel.profilePictureUrl),
          // ),
       
        //  ClipOval(
             
        //      child: Image.network(
        //        _channel.profilePictureUrl,
        //        width: 200,
        //        height: 200,
        //        fit: BoxFit.cover,
        //      ),

        //  ),

      //  DecoratedBox(
      //    decoration: BoxDecoration(
      //        image: DecorationImage(image: NetworkImage(_channel.profilePictureUrl), fit: BoxFit.fill),

      //      )
         
      //    ),
   
    

         // SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

               //Name of Channel title

                // Text(
                //   _channel.title,
                //   textAlign: TextAlign.start,
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 20.0,
                //     fontWeight: FontWeight.w600,
                //   ),
                //  // overflow: TextOverflow.ellipsis,
                // ),
              
              // Name OF Hello TV Subscriver


                // Text(
                //   '${_channel.subscriberCount} subscribers',
                //   style: TextStyle(
                //     color: Colors.red,
                //     backgroundColor: Colors.blue,
                //     fontSize: 16.0,
                //     fontWeight: FontWeight.w600,
                //   ),
                //   overflow: TextOverflow.ellipsis,
                // ),
              ],
            ),
          )
        ],
      ),

    );
  }

  _buildVideo(Video video) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => VideoScreen(id: video.id),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        padding: EdgeInsets.all(10.0),
        height: 140.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(10,5),
              blurRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Image(
              width: 150.0,
              image: NetworkImage(video.thumbnailUrl),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Text(
                video.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _loadMoreVideos() async {
    _isLoading = true;
    List<Video> moreVideos = await APIService.instance
        .fetchVideosFromPlaylist(playlistId: _channel.uploadPlaylistId);
    List<Video> allVideos = _channel.videos..addAll(moreVideos);
    setState(() {
      _channel.videos = allVideos;
    });
    _isLoading = false;
  }
  void ChoiseAction(String choise)
  {
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child:Text('Hello TV',
          style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        ),),
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
          )
        ],
      ),
      backgroundColor: Colors.amber,
      body: _channel != null
          ? NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollDetails) {
                if (!_isLoading &&
                    _channel.videos.length != int.parse(_channel.videoCount) &&
                    scrollDetails.metrics.pixels ==
                        scrollDetails.metrics.maxScrollExtent) {
                  _loadMoreVideos();
                }
                return false;
              },
              child:Column(
                 children: <Widget>[
            RaisedButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.white,
             color: Colors.blue,
            child:Text('View Our Website'),
            onPressed:(){
              Navigator.push(
            context,
             MaterialPageRoute(builder: (_) => Route() 
             
             ),
           );
         },

          ),

          
          Expanded(child: 
                ListView.builder(
                
                itemCount: 1 + _channel.videos.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return _buildProfileInfo();
                  }
                  Video video = _channel.videos[index - 1];
                  return _buildVideo(video);
                },
              ),
          ),    
                 ]
              ) 
              
              
            )
          : Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor, // Red
                ),
              ),
            ),
    );
  }
}



class Route extends StatefulWidget {
  @override
  _RouteState createState() => _RouteState();
}

class _RouteState extends State<Route> {
  bool isLoad = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Channel",
      home:Scaffold(
          appBar: AppBar(
            title:Center(child:Text("Hello TV Website ",
            style: TextStyle(
             color: Colors.white,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        )
       ),
            backgroundColor: Colors.green,
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













// class Route extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
  //   return MaterialApp(
  //      title:"CHANNEL",
  //      home: Scaffold(
  //       appBar: AppBar(
  //         title:Center(
  //           child:Text("Channel Star BD  Website ",),),
  //           backgroundColor: Colors.red,
  //       ),
  //       body: Center(
  //         child:WebView(
  //         initialUrl: "https://channelstarbd.com",
  //         javascriptMode: JavascriptMode.unrestricted,
  //     ),
  //       ),
  //     ),
  //   );
  // }

  
//}