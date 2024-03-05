import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:six_cash/features/profile/controllers/faq_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';

class FaqScreen extends StatefulWidget {
  final String title;
  const FaqScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();

}

class _FaqScreenState extends State<FaqScreen> {
  bool isExpanded = false;

  @override
  void initState() {
    Get.find<FaqController>().getFaqList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: widget.title),
      body: GetBuilder<FaqController>(builder: (faqController) {
        return faqController.isLoading ? const _FaqShimmer() : ListView.builder(
            itemCount: faqController.helpTopics!.length,
            itemBuilder: (ctx, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpansionTile(
                    iconColor: Theme.of(context).primaryColor,
                    title: Text(faqController.helpTopics![index].question!, style: rubikRegular.copyWith(
                      color: ColorResources.getTextColor(),
                    )),
                    leading: Icon(
                      Icons.collections_bookmark_outlined,
                      color: ColorResources.getTextColor(),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(faqController.helpTopics![index].answer!, style: rubikLight, textAlign: TextAlign.justify),
                      ),
                    ],
                  ),
                ],
              );
            });
      }),
    );
  }
}


class _FaqShimmer extends StatelessWidget {
  const _FaqShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: Colors.grey[350]!,
        highlightColor: Colors.grey[200]!,
        child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (ctx, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: size.width*0.5,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}

