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
        .fetchChannel(channelId: 'UCXP3uYPYdsl8I3-4_LqEUiQ');
    setState(() {
      _channel = channel;
    });
  }

  _buildProfileInfo() {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.green,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 1),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35.0,
            backgroundImage: NetworkImage(_channel.profilePictureUrl),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _channel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '${_channel.subscriberCount} subscribers',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
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
        title:Center(child:Text('ইতিহাস ৭১ টিভি',
          style: TextStyle(
             color: Colors.red,
             fontSize: 30.0,
            fontWeight: FontWeight.w900,
          ),
        ),),
        backgroundColor: Colors.green,
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
      backgroundColor: Colors.lightGreen,
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
            title:Center(child:Text("ইতিহাস ৭১ টিভি Website",
            style: TextStyle(
             color: Colors.red,
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
                initialUrl:'https://itihass71tv.com',
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