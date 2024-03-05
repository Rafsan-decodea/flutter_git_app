import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/common/widgets/paginated_list_widget.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/features/history/domain/models/transaction_model.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/no_data_widget.dart';
import 'package:six_cash/features/history/screens/transaction_history_screen.dart';
import 'package:six_cash/features/history/widgets/history_shimmer_widget.dart';
import 'transation_history_card_widget.dart';

class TransactionViewWidget extends StatefulWidget {
  final ScrollController? scrollController;
  final TextEditingController? searchController;
  final bool? isHome;
  final String? type;

   const TransactionViewWidget({Key? key, this.scrollController, this.searchController, this.isHome, this.type}) : super(key: key);

  @override
  State<TransactionViewWidget> createState() => _TransactionViewWidgetState();
}

class _TransactionViewWidgetState extends State<TransactionViewWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    widget.searchController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder<TransactionHistoryController>(id: 'transaction_list', builder: (transactionHistory){
      return  CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPersistentHeader(
              pinned: true,
              delegate: SliverDelegate(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: Dimensions.paddingSizeExtraSmall, horizontal: Dimensions.paddingSizeDefault),
                    child: TextField(
                      controller: widget.searchController,
                      style: rubikMedium,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'search_for_previous'.tr,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(style: BorderStyle.none, width: 0),
                        ),
                        hintStyle: rubikRegular.copyWith(fontSize: Dimensions.fontSizeDefault, color: Theme.of(context).hintColor),
                        filled: true,
                        fillColor: ColorResources.getSearchBg(),
                      ),
                      maxLines: 1,
                      onChanged: (value) {
                        transactionHistory.setSearchText = value;
                        transactionHistory.getTransactionList(1);
                      },

                    ),
                  ),

              ),
          ),

          SliverToBoxAdapter(child: TransactionWidget(isHome: widget.isHome, scrollController: _scrollController)),
        ],

      );



    });
  }
}
class TransactionWidget extends StatelessWidget {
  final ScrollController scrollController;
  final bool? isHome;
  const TransactionWidget({Key? key, this.isHome, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TransactionHistoryController>(
      builder: (transactionHistory) {
        List<Transactions> transactionList = transactionHistory.transactionModel?.transactions ?? [];
        return transactionHistory.transactionModel == null ? const HistoryShimmerWidget()  : transactionList.isNotEmpty ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraSmall),
        child: PaginatedListWidget(
          scrollController: scrollController,
          offset: transactionHistory.transactionModel?.offset,
          totalSize: transactionHistory.transactionModel?.totalSize,
          onPaginate: (int? offset) async {
            await transactionHistory.getTransactionList(offset ?? 1);
          },
          itemView: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactionList.length,
              itemBuilder: (ctx,index){
                return TransactionHistoryCardWidget(transactions: transactionList[index]);
              }),
        ),
                ) : NoDataWidget(fromHome: isHome);
      }
    );
  }
}

