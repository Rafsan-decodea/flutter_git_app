import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/enums/request_type_enum.dart';
import 'package:six_cash/features/requested_money/controllers/requested_money_controller.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_loader_widget.dart';
import 'package:six_cash/features/requested_money/widgets/requested_list_widget.dart';



class RequestedListScreen extends StatefulWidget {
  final RequestType requestType;

  const RequestedListScreen({Key? key,  required this.requestType}) : super(key: key);

  @override
  State<RequestedListScreen> createState() => _RequestedListScreenState();
}

class _RequestedListScreenState extends State<RequestedListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final RequestedMoneyController requestedMoneyController = Get.find<RequestedMoneyController>();

    requestedMoneyController.setIndex(0, isUpdate: false);
    if(widget.requestType == RequestType.sendRequest) {
      requestedMoneyController.getRequestedMoneyList(reload: true);
    }else{
      requestedMoneyController.getWithdrawHistoryList(reload: true);
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(
        title:  widget.requestType == RequestType.withdraw
            ? 'withdraw_history'.tr : 'send_requests'.tr,
        onTap: () => Get.back(),
      ),
      body: SafeArea(
        child: RefreshIndicator(
          backgroundColor: Theme.of(context).primaryColor,
          onRefresh: () async {
            if(widget.requestType == RequestType.sendRequest) {
              await Get.find<RequestedMoneyController>().getRequestedMoneyList(reload: true);
            }else {
              await Get.find<RequestedMoneyController>().getWithdrawHistoryList(reload: true);
            }
          },
          child: GetBuilder<RequestedMoneyController>(
              builder: (reqMoneyController) {
                return reqMoneyController.isLoading ? CustomLoaderWidget(color: Theme.of(context).primaryColor) : CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverPersistentHeader(
                        pinned: true,
                        delegate: SliverDelegate(
                            child: Container(padding: const EdgeInsets.all(Dimensions.paddingSizeSmall), height: 50, alignment: Alignment.centerLeft,
                              child: GetBuilder<RequestedMoneyController>(
                                builder: (requestMoneyController){
                                  return ListView(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        RequestTypeButton(
                                          text: 'pending'.tr, index: 0,
                                          length : widget.requestType == RequestType.withdraw
                                              ? reqMoneyController.pendingWithdraw.length : requestMoneyController.pendingRequestedMoneyList.length,
                                        ),
                                        const SizedBox(width: 10),

                                        RequestTypeButton(
                                          text: 'accepted'.tr, index: 1,
                                          length:  widget.requestType == RequestType.withdraw
                                              ? reqMoneyController.acceptedWithdraw.length : requestMoneyController.acceptedRequestedMoneyList.length,
                                        ),
                                        const SizedBox(width: 10),

                                        RequestTypeButton(
                                          text: 'denied'.tr, index: 2,
                                          length:  widget.requestType == RequestType.withdraw
                                              ? reqMoneyController.deniedWithdraw.length : requestMoneyController.deniedRequestedMoneyList.length,
                                        ),
                                        const SizedBox(width: 10),

                                        RequestTypeButton(
                                          text: 'all'.tr, index: 3,
                                          length:  widget.requestType == RequestType.withdraw
                                              ? reqMoneyController.allWithdraw.length : requestMoneyController.requestedMoneyList.length,
                                        ),

                                      ]);
                                },

                              ),
                            ))),

                    SliverToBoxAdapter(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(Dimensions.paddingSizeExtraSmall),
                          child: RequestedListWidget(
                            scrollController: _scrollController,
                            isHome: false, requestType: widget.requestType,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}

class RequestTypeButton extends StatelessWidget {
  final String text;
  final int index;
  final int  length;

  const RequestTypeButton({Key? key, required this.text, required this.index, required this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.find<RequestedMoneyController>().setIndex(index),
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
      child: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Get.find<RequestedMoneyController>().requestTypeIndex == index ? Theme.of(context).secondaryHeaderColor :  Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: .5,color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault, vertical: Dimensions.paddingSizeExtraSmall),
          child: Text('$text($length)',
              style: rubikSemiBold.copyWith(color: Get.find<RequestedMoneyController>().requestTypeIndex == index
                  ? ColorResources.blackColor : Theme.of(context).textTheme.titleLarge!.color)),
        ),
      ),
    );
  }
}


class SliverDelegate extends SliverPersistentHeaderDelegate {
  Widget child;
  SliverDelegate({required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(SliverDelegate oldDelegate) {
    return oldDelegate.maxExtent != 50 || oldDelegate.minExtent != 50 || child != oldDelegate.child;
  }
}