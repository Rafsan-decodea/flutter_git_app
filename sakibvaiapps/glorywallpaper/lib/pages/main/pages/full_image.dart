import 'package:admob_flutter/admob_flutter.dart';
import 'package:easy_permission_validator/easy_permission_validator.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_cmoon_icons/flutter_cmoon_icons.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:wallpaper_app_flutter/database/db/database_provider.dart';
import 'package:wallpaper_app_flutter/database/db_model/favorite_model.dart';
import 'package:wallpaper_app_flutter/localizations/app_localizations.dart';
import 'package:wallpaper_app_flutter/pages/main/widget/dialog/di/custom_alert_dialog.dart';
import 'package:wallpaper_app_flutter/pages/widget/popup/visble_phone.dart';
import 'package:wallpaper_app_flutter/utils/global/constants.dart';
import 'package:wallpaper_app_flutter/utils/share/share.dart';
import 'package:wallpaper_app_flutter/widget/global/download_btn.dart';
import 'dart:async';
import 'dart:io';
import 'package:wallpaper_app_flutter/widget/global/toasts.dart';
import 'package:wallpaper_manager/wallpaper_manager.dart';

class FullImage extends StatefulWidget {
  final String imgUrl;
  final String imageName;

  const FullImage({Key key, this.imgUrl, this.imageName}) : super(key: key);

  @override
  _FullImageState createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  AdmobInterstitial interstitialAd;
  GlobalKey<ScaffoldState> scfaffoldKey = GlobalKey<ScaffoldState>();
  List<Favorite> list = new List();
  List<Favorite> noteList;
  bool permission = false;
  bool isVisble = false;
  String _message = "";
  String _path = "";
  String _size = "";
  String _mimeType = "";
  File _imageFile;
  String _wallpaperFile = 'Unknown';
  int _progress = 0;
  bool isFavorite = false;
  final favColor = Colors.redAccent;
  final noFavColor = Colors.grey;
  List<File> _mulitpleFiles = [];
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final spinKit = SpinKitCircle(
    color: Colors.redAccent,
    size: 60,
    duration: Duration(milliseconds: 1000),
  );

  _permissionRequest() async {
    final permissionValidator = EasyPermissionValidator(
      context: context,
      appName: 'Wallpaper',
    );
    var result = await permissionValidator.storage();
    if (result) {
      setState(() {
        permission = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _permissionRequest();
    ImageDownloader.callback(onProgressUpdate: (String imageId, int progress) {
      setState(() {
        _progress = progress;
      });
    });
    var initializationSettingsAndroid =
        AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettingsIOs = IOSInitializationSettings();
    var initSetttings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOs);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);

    returnCheckFavResult();

    print(isFavorite);

    interstitialAd = AdmobInterstitial(
      adUnitId: INTERSITITAL_ID,
      listener: (AdmobAdEvent event, Map<String, dynamic> args) {
        if (event == AdmobAdEvent.closed) interstitialAd.load();
        handleEvent(event, args, 'Interstitial');
      },
    );

    interstitialAd.load();
  }

  void handleEvent(
      AdmobAdEvent event, Map<String, dynamic> args, String adType) {
    switch (event) {
      case AdmobAdEvent.loaded:
        print("Loaded");
        break;
      case AdmobAdEvent.opened:
        print("Opend");
        break;
      case AdmobAdEvent.closed:
        print("Closed");
        break;
      case AdmobAdEvent.failedToLoad:
        print("Failed");
        break;
      default:
    }
  }

  @override
  void dispose() {
    interstitialAd.dispose();
    super.dispose();
  }

  Future onSelectNotification(String payload) {
    return notificationMessage(payload);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfaffoldKey,
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: widget.imgUrl,
                  child: FadeInImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(widget.imgUrl),
                    placeholder: AssetImage('assets/load.gif'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Visibility(
                    visible: isVisble,
                    child: VisblePhone(),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 3,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Visibility(
                visible: !isVisble,
                child: IconButton(
                  icon: Icon(
                    Icons.cancel_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  //Todo is check image Url
                },
                child: Visibility(
                  visible: !isVisble,
                  child: GestureDetector(
                    onTap: () {
                      setScreenSetWallaperDialog(context);
                    },
                    child: DownloadButton(),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 55,
                left: 10,
              ),
              child: Visibility(
                visible: !isVisble,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  width: 50,
                  height: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.download_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      if (await interstitialAd.isLoaded) {
                        interstitialAd.show();
                      } else {
                        print("Loaded");
                      }
                      _downloadImage(widget.imgUrl);
                    },
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50, right: 20),
              child: FabCircularMenu(
                fabOpenIcon: Icon(
                  IconMoon.icon_one_finger_swipe_horizontally,
                  size: 40,
                ),
                ringColor: Colors.purple[100],
                fabColor: Colors.green,
                fabCloseColor: Colors.white,
                fabElevation: 0.0,
                fabSize: 55,
                fabCloseIcon: Icon(Icons.wallet_membership_sharp),
                children: <Widget>[
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.palette,
                  //     size: 30,
                  //     color: Colors.white,
                  //   ),
                  //   onPressed: () async {
                  //     String imageUrl = widget.imgUrl;
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => EditImage(
                  //           image: imageUrl,
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                  /*
                  Todo This is line mage To addFavorite 
                  Favorite Button 
                  Image To favoritw Is add or Image From favorite
                  Delete iimage Provider 
                */
                  isFavorite == false
                      ? IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            size: 35,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = true;
                              imageToAddListFavorite(widget.imgUrl);
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 35,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            setState(() {
                              isFavorite = false;
                              imageDeleteFromFavorite();
                            });
                          },
                        ),
                  IconButton(
                    icon: Icon(
                      Icons.share,
                      size: 35,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      shareImageFromUrl(widget.imgUrl);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone_android,
                      size: 35,
                      color: Colors.yellow,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          if (isVisble == false) {
                            setState(() {});
                            isVisble = true;
                          } else {
                            setState(() {});
                            isVisble = false;
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _downloadImage(String url,
      {AndroidDestinationType destination,
        bool whenError = false,
        String outputMimeType}) async {
    String fileName;
    String path;
    int size;
    String mimeType;
    try {
      String imageId;

      if (whenError) {
        imageId = await ImageDownloader.downloadImage(url,
            outputMimeType: outputMimeType,
            destination: AndroidDestinationType.directoryDownloads)
            .catchError((error) {
          if (error is PlatformException) {
            var path = "";
            if (error.code == "404") {
              print("Not Found Error.");
            } else if (error.code == "unsupported_file") {
              print("UnSupported FIle Error.");
              path = error.details["unsupported_file_path"];
            }
            setState(() {
              _message = error.toString();
              _path = path;
            });
          }

          print(error);
        }).timeout(Duration(seconds: 10), onTimeout: () {
          print("timeout");
          return;
        });
      } else {
        if (destination == null) {
          imageId = await ImageDownloader.downloadImage(
            url,
            outputMimeType: outputMimeType,
            destination: AndroidDestinationType.directoryDownloads,
          );
        } else {
          imageId = await ImageDownloader.downloadImage(
            url,
            destination: AndroidDestinationType.directoryDownloads,
            outputMimeType: outputMimeType,
          );
        }
      }

      if (imageId == null) {
        return;
      }
      fileName = await ImageDownloader.findName(imageId);
      path = await ImageDownloader.findPath(imageId);
      size = await ImageDownloader.findByteSize(imageId);
      mimeType = await ImageDownloader.findMimeType(imageId);
    } on PlatformException catch (error) {
      setState(() {
        _message = error.message;
      });
      return;
    }

    if (!mounted) return;

    setState(() {
      var location = Platform.isAndroid ? "Directory" : "Glory Wallpaper";
      _message = 'Saved as "$fileName" in $location.\n';
      _size = 'size:     $size';
      _mimeType = 'mimeType: $mimeType';
      _path = path;

      if (!_mimeType.contains("video")) {
        _imageFile = File(path);
      }
      showNotification(widget.imageName);

      return;
    });
  }

  Future returnCheckFavResult() async {
    var db = Helper();
    bool hasData = await db.hasData(widget.imgUrl);
    isFavorite = hasData;
    return isFavorite;
  }

  imageToAddListFavorite(String imageUrl) {
    var fav = Favorite();
    fav.name = imageUrl;
    var db = Helper();
    db.insertFav(fav);
    error( ApplicationLocalizations.of(context).translate('favorite_added'),);
  }

  Future imageDeleteFromFavorite() async {
    var db = Helper();
    db.deleteImageFav(widget.imgUrl);
    error(ApplicationLocalizations.of(context).translate('favorite_delete'));
  }

  showNotification(String imageName) async {
    var android = new AndroidNotificationDetails(
        'id', 'channel ', 'description',
        priority: Priority.high,
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound('notif'));
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin.show(
        0, imageName, 'Download Image Successfully', platform,
        payload: 'Dowloaded');
  }

  void setScreenSetWallaperDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          content: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Set Wallpaper",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () async {
                    if (await interstitialAd.isLoaded) {
                      interstitialAd.show();
                    } else {
                      print("Loaded");
                    }
                    setWallpaperFromImageSetBothAlllScreen();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.mobile_screen_share),
                        onPressed: () {},
                      ),
                      Text(
                        "ALL SCREEN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setWallpaperFromImageSetToHomeScreen();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.phone_android),
                        onPressed: () {},
                      ),
                      Text(
                        "HOME SCREEN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setWallpaperFromImageSetTLockScreen();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.phonelink_lock),
                        onPressed: () {},
                      ),
                      Text(
                        "LOCK SCREEN",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  //Todo This is line Home Screen Set Walllpaper
  Future<void> setWallpaperFromImageSetToHomeScreen() async {
    setState(() {
      _wallpaperFile = "Loading";
    });
    String result;
    String imageUrl = widget.imgUrl;
    var file = await DefaultCacheManager().getSingleFile(imageUrl);
    try {
      result = await WallpaperManager.setWallpaperFromFile(
          file.path, WallpaperManager.HOME_SCREEN);
      error("Set Wallpaper Home Screen");
    } catch (e) {
      result = 'Failed to get wallpaper.';
    }
    if (!mounted) return;

    setState(() {
      _wallpaperFile = result;
    });
  }

  //Todo This is line LockScreen Set Wallpaper

  Future<void> setWallpaperFromImageSetTLockScreen() async {
    setState(() {
      _wallpaperFile = "Loading";
    });
    String result;
    String imageUrl = widget.imgUrl;
    var file = await DefaultCacheManager().getSingleFile(imageUrl);
    try {
      result = await WallpaperManager.setWallpaperFromFile(
          file.path, WallpaperManager.LOCK_SCREEN);
      error("Set Wallpaper Lock Screen");
    } catch (e) {
      result = 'Failed to get wallpaper.';
    }
    if (!mounted) return;

    setState(() {
      _wallpaperFile = result;
    });
  }

  //Todo This is line Both All Set Wallpaper

  Future<void> setWallpaperFromImageSetBothAlllScreen() async {
    setState(() {
      _wallpaperFile = "Loading";
    });
    String result;
    String imageUrl = widget.imgUrl;
    var file = await DefaultCacheManager().getSingleFile(imageUrl);
    try {
      result = await WallpaperManager.setWallpaperFromFile(
          file.path, WallpaperManager.BOTH_SCREENS);
      error("Set Wallpaper Both Screen");
    } catch (e) {
      result = 'Failed to get wallpaper.';
    }
    if (!mounted) return;

    setState(() {
      _wallpaperFile = result;
    });
  }
}