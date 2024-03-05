import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/home/controllers/websitelink_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/images.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_image_widget.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:six_cash/features/add_money/screens/web_screen.dart';


class LinkedWebsiteWidget extends StatelessWidget {
  const LinkedWebsiteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (splashController) {
          return splashController.configModel!.systemFeature!.linkedWebSiteStatus! ?
          GetBuilder<WebsiteLinkController>(builder: (websiteLinkController){
            return websiteLinkController.isLoading ?
            const _WebSiteShimmerWidget() : websiteLinkController.websiteList!.isEmpty ?
            const SizedBox() :  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeLarge),
                  child: Text(
                    'linked_website'.tr, style: rubikRegular.copyWith(
                    fontSize: Dimensions.fontSizeLarge,
                    color: Theme.of(context).textTheme.titleLarge!.color,
                  ),),
                ),


                Container(
                  height: 86,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: Dimensions.paddingSizeSmall),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    boxShadow: [BoxShadow(
                      color: ColorResources.containerShadow.withOpacity(0.05),
                      blurRadius: 20, offset: const Offset(0, 3),
                    )],
                  ),
                  child: ListView.builder(
                    itemCount: websiteLinkController.websiteList!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomInkWellWidget(
                        onTap: () => Get.to(WebScreen(selectedUrl: websiteLinkController.websiteList![index].url!)),
                        radius: Dimensions.radiusSizeExtraSmall,
                        highlightColor: Theme.of(context).primaryColor.withOpacity(0.1),
                        child: Container(width: 100,
                          padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeDefault),
                          child: Column(
                            children: [
                              SizedBox(width: 50, height: 30,
                                child: CustomImageWidget(
                                  image: "${Get.find<SplashController>().configModel!.baseUrls!.linkedWebsiteImageUrl
                                  }/${websiteLinkController.websiteList![index].image}",
                                  placeholder: Images.webLinkPlaceHolder, fit: BoxFit.cover,
                                ),
                              ),

                              const Spacer(),
                              Text(
                                websiteLinkController.websiteList![index].name!,
                                style: rubikRegular.copyWith(
                                  fontSize: Dimensions.fontSizeSmall,
                                  color: ColorResources.getWebsiteTextColor(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: Dimensions.paddingSizeSmall ,
                ),
              ],
            );
          }
          ) : const SizedBox();
        }
    );
  }
}


class _WebSiteShimmerWidget extends StatelessWidget {
  const _WebSiteShimmerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Shimmer.fromColors(
      baseColor: Colors.grey[350]!,
      highlightColor: Colors.grey[200]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20,
            width: size.width*0.3,
            margin: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 86,
            width: double.infinity,
            color: Colors.black12,
            child:  ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSizeLarge),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingSizeSmall,vertical:  Dimensions.paddingSizeSmall),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 50,

                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 10,width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      ],
                    ),
                  );
                }
            ),),
        ],
      ),
    );
  }
}

