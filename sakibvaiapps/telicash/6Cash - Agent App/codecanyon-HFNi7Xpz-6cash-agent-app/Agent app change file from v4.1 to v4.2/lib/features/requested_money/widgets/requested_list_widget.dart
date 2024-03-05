import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:six_cash/common/enums/request_type_enum.dart';
import 'package:six_cash/features/requested_money/controllers/requested_money_controller.dart';
import 'package:six_cash/features/requested_money/domain/models/field_item_model.dart';
import 'package:six_cash/features/requested_money/domain/models/requested_money_model.dart';
import 'package:six_cash/features/requested_money/domain/models/withdraw_histroy_model.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/common/widgets/no_data_widget.dart';
import 'package:six_cash/features/requested_money/widgets/requested_money_card_widget.dart';


class RequestedListWidget extends StatefulWidget {
  final ScrollController? scrollController;
  final bool? isHome;
  final RequestType? requestType;
  const RequestedListWidget({Key? key, this.scrollController, this.isHome, this.requestType,}) : super(key: key);

  @override
  State<RequestedListWidget> createState() => _RequestedListWidgetState();
}

class _RequestedListWidgetState extends State<RequestedListWidget> {
  @override
  Widget build(BuildContext context) {
    int offset = 1;
    widget.scrollController?.addListener(() {
      if(widget.requestType != RequestType.withdraw
          && widget.scrollController!.position.maxScrollExtent == widget.scrollController!.position.pixels
          && (widget.requestType == RequestType.sendRequest
              ? Get.find<RequestedMoneyController>().requestedMoneyList.length
              :  Get.find<RequestedMoneyController>().requestedMoneyList.length) != 0
          && !Get.find<RequestedMoneyController>().isLoading) {
        int? pageSize;
        pageSize = Get.find<RequestedMoneyController>().pageSize;

        if(offset < pageSize!) {
          offset++;
          Get.find<RequestedMoneyController>().showBottomLoader();
          if(widget.requestType == RequestType.sendRequest) {
            Get.find<RequestedMoneyController>().getRequestedMoneyList();
          }else {
            Get.find<RequestedMoneyController>().getWithdrawHistoryList();
          }

        }
      }

    });

    return GetBuilder<RequestedMoneyController>(builder: (req){
      List<RequestedMoney> reqList;
      late List<WithdrawHistory> withdrawHistoryList;

      reqList = req.requestedMoneyList;
      if (Get.find<RequestedMoneyController>().requestTypeIndex == 0) {
        if(widget.requestType == RequestType.withdraw) {
          withdrawHistoryList = req.pendingWithdraw;
        }else{
          reqList =  req.pendingRequestedMoneyList;
        }

      } else if (Get.find<RequestedMoneyController>().requestTypeIndex == 1) {
        if(widget.requestType == RequestType.withdraw) {
          withdrawHistoryList = req.acceptedWithdraw;
        }else{
          reqList = req.acceptedRequestedMoneyList;
        }

      }  else if (Get.find<RequestedMoneyController>().requestTypeIndex == 2) {
        if(widget.requestType == RequestType.withdraw) {
          withdrawHistoryList = req.deniedWithdraw;
        }else{
          reqList = req.deniedRequestedMoneyList;
        }
      }else{
        if(widget.requestType == RequestType.withdraw) {
          withdrawHistoryList = req.allWithdraw;
        }else{
          reqList = req.requestedMoneyList;
        }
      }
      return Column(children: [
        !req.isLoading ? (widget.requestType == RequestType.withdraw
            ? withdrawHistoryList.isNotEmpty : reqList.isNotEmpty
        ) ? Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSmall),
          child: ListView.builder(
              physics:  const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: widget.isHome! ? 1 : widget.requestType == RequestType.withdraw
                  ? withdrawHistoryList.length : reqList.length,

              itemBuilder: (ctx,index){

                List<FieldItemModel>? itemList = [];
                if(widget.requestType == RequestType.withdraw) {
                  withdrawHistoryList[index].withdrawalMethodFields!.forEach((key, value) {
                    itemList.add(FieldItemModel(key, value));
                  });
                }
                return RequestedMoneyCardWidget(
                  requestedMoney: widget.requestType != RequestType.withdraw ? reqList[index] : null,
                  isHome: widget.isHome,
                  requestType: widget.requestType,
                  withdrawHistory:  widget.requestType == RequestType.withdraw ? withdrawHistoryList[index] : null,
                  itemList: itemList,
                );
              }),
        ): const NoDataWidget() : RequestedMoneyShimmer(isHome: widget.isHome),


      ]);
    });
  }
}

class RequestedMoneyShimmer extends StatelessWidget {
  final bool? isHome;
  const RequestedMoneyShimmer({Key? key, this.isHome}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: isHome!? 1 : Get.find<RequestedMoneyController>().requestedMoneyList.length,
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
          color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(0.3),
          alignment: Alignment.center,
          child: Shimmer.fromColors(
            baseColor: Theme.of(context).shadowColor,
            highlightColor: Colors.grey[100]!,
            enabled: true,
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.notifications)),
              title: Container(height: 20, color: Colors.white),
              subtitle: Container(height: 10, width: 50, color: Colors.white),
            ),
          ),
        );
      },
    );
  }
}