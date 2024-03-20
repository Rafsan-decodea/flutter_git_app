import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/history/controllers/transaction_history_controller.dart';
import 'package:six_cash/features/history/domain/models/transaction_model.dart';
import 'package:six_cash/features/history/widgets/history_view_widget.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';

class TransactionHistoryScreen extends StatefulWidget {
  final Transactions? transactions;
  const TransactionHistoryScreen({Key? key, this.transactions}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, initialIndex: 0, vsync: this);
    _tabController.addListener(() {
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: 'transaction_history'.tr, onlyTitle: true),
      body: RefreshIndicator(
        onRefresh: () async {
          await Get.find<TransactionHistoryController>().getTransactionList(1);
        },
        child: TransactionViewWidget(
          scrollController: _scrollController,
          searchController : _searchController,
          isHome: false,
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