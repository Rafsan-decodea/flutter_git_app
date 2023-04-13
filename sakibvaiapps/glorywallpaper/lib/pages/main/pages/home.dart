import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:provider/provider.dart';
import 'package:wallpaper_app_flutter/model/local/home_tabbar_strings.dart';
import 'package:wallpaper_app_flutter/model/local/image_model.dart';
import 'package:wallpaper_app_flutter/pages/main/widget/ui/category_to_imagelist.dart';
import 'package:wallpaper_app_flutter/pages/main/widget/ui/network_error.dart';
import 'package:wallpaper_app_flutter/service/http/api_provider.dart';
import 'package:wallpaper_app_flutter/service/http/home_tabbar_string_data.dart';
import 'package:wallpaper_app_flutter/service/provider/theme_provider.dart';
import 'package:wallpaper_app_flutter/utils/global/constants.dart';
import 'package:wallpaper_app_flutter/widget/global/toasts.dart';
import 'full_image.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AdmobBannerSize bannerSize;
  var _gridController = ScrollController();
  final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
      GlobalKey<LiquidPullToRefreshState>();
  var hits = List<Hits>();
  int _page = pageNumber;
  List<HomeTabbarStrings> strings = new List();

  var imageLoadingSpinKit = SpinKitPulse(
    size: 60,
    color: Colors.redAccent,
    duration: Duration(milliseconds: 2000),
  );

  @override
  void initState() {
    resetSearch();
    super.initState();

    _gridController.addListener(_scrollListener);
    _loadSearchImages(rApiTexts);
    strings = getTabbarStrings();

    //Todo This is line ads servoce begin line and
    //! end to grid items and servioce image data

    bannerSize = AdmobBannerSize.BANNER;

    //? Thin is line end to ads service
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 65,
            child: ListView.builder(
              itemCount: strings.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryToImageList(
                              imageUrl: strings[index].imageNames,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        color: Provider.of<Settings>(context).isDarkMode
                            ? Colors.white
                            : Colors.red,
                        width: 100,
                        height: 30,
                        child: Center(
                          child: Text(
                            "${strings[index].imageNames}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: LiquidPullToRefresh(
              color: Colors.red,
              key: _refreshIndicatorKey,
              onRefresh: () async {
                setState(() {
                  try {
                    _loadSearchImages('wallpapers');
                  } catch (e) {
                    error(e);
                  }
                });
              },
              showChildOpacityTransition: false,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: gridImageListView(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: AdmobBanner(
              adUnitId: BANNER_ID,
              adSize: AdmobBannerSize.BANNER,
              listener: (AdmobAdEvent event, Map<String, dynamic> args) {
                handleEvent(event, args, 'Banner');
              },
              onBannerCreated: (AdmobBannerController controller) {
                // Dispose is called automatically for you when Flutter removes the banner from the widget tree.
                // Normally you don't need to worry about disposing this yourself, it's handled.
                // If you need direct access to dispose, this is your guy!
                // controller.dispose();
              },
            ),
          ),
        ],
      ),
    );
  }

  gridImageListView() {
    return (hits.length > 0)
        ? GridView.builder(
            controller: _gridController,
            itemCount: hits.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              if (index == hits.length) {
                return Center(
                    child: SizedBox(
                  child: CircularProgressIndicator(),
                  width: 30,
                  height: 30,
                ));
              }
              return Hero(
                tag: hits[index].largeImageURL,
                child: GestureDetector(
                  onTap: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FullImage(
                          imgUrl: hits[index].largeImageURL,
                          imageName: hits[index].user,
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 2, right: 2),
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, left: 2, right: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage(
                          fit: BoxFit.cover,
                          placeholder: AssetImage('assets/load.gif'),
                          image: NetworkImage(hits[index].webformatURL),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : Center(
            child: WaitNetworkData(),
          );
  }

  //Todo Sekillerin ele gec gelmesi try ve catch ile baglidir cunki search da ele deyil
  _loadSearchImages(String query) async {
    var model = await ApiProvider().getSearchedImages(query, ++_page);
    hits.addAll(model.hits);
    setState(() {});
  }

  _scrollListener() {
    if (_gridController.offset >= _gridController.position.maxScrollExtent &&
        !_gridController.position.outOfRange) {
      _loadSearchImages(rApiTexts);
    }
  }

  @override
  void dispose() {
    super.dispose();
    resetSearch();
  }
  resetSearch() {
    hits.clear();
    _page = 0;
  }
}
