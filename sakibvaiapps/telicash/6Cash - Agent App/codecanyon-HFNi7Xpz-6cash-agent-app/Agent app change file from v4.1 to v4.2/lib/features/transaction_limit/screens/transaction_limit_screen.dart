import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/language/controllers/localization_controller.dart';
import 'package:six_cash/features/transaction_limit/domain/models/transaction_table_model.dart';
import 'package:six_cash/features/transaction_limit/widgets/transaction_table_widget.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_ink_well_widget.dart';
import 'package:six_cash/common/widgets/no_data_widget.dart';

class TransactionLimitScreen extends StatefulWidget {
  final List<TransactionTableModel> transactionTableModelList;
  const TransactionLimitScreen({Key? key, required this.transactionTableModelList}) : super(key: key);

  @override
  State<TransactionLimitScreen> createState() => _TransactionLimitScreenState();
}

class _TransactionLimitScreenState extends State<TransactionLimitScreen> with TickerProviderStateMixin{

  TabController? tabController;
  final List<String> tabItem = ['daily_limit', 'monthly_limit'];

  @override
  void initState() {
    tabController = TabController(length: tabItem.length, vsync: this);

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final String languageText = AppConstants.languages[Get.find<LocalizationController>().selectedIndex].languageName!;

    return DefaultTabController(
      length: tabItem.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          leadingWidth: 90,
          leading: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
            child: CustomInkWellWidget(
              onTap: ()=> Get.back(),
              radius: Dimensions.radiusSizeSmall,
              child: Container(
                height: 40, width: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.7), width: 0.5),
                  borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
                ),
                child: const Center(
                  child: Icon(Icons.arrow_back_ios_new, size: Dimensions.paddingSizeSmall, color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).canvasColor,
              child: TabBar(
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: Theme.of(context).primaryColor.withOpacity(0.5),
                controller: tabController,
                isScrollable: true,
                padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeSmall,
                  vertical: Dimensions.paddingSizeSmall,
                ),
                indicatorColor: Theme.of(context).textTheme.bodyLarge?.color?.withOpacity(0.7),


                tabs: tabItem.map((e) => Tab(text: e.tr, height: 20)).toList(),
              ),
            ),
          ),
          title: Text('transaction_limit'.tr, style: rubikRegular.copyWith(color: Colors.white, fontSize: Dimensions.fontSizeExtraLarge)),
          actions: [
            Padding(
              padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
              child: InkWell(
                onTap: AppConstants.languages.length > 1 ? (){
                  Get.toNamed(RouteHelper.getChoseLanguageRoute());
                } : null,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).secondaryHeaderColor,
                    borderRadius: BorderRadius.circular(Dimensions.radiusSizeExtraLarge),
                  ),
                  padding: const EdgeInsets.all(4),
                  alignment: Alignment.center,
                  child: Text(languageText, style: rubikRegular.copyWith(color: Colors.black)),
                ),
              ),
            ),

          ],
        ),

        body: widget.transactionTableModelList.isNotEmpty ? Padding(
          padding: const EdgeInsets.all(Dimensions.paddingSizeDefault),
          child: TabBarView(
              controller: tabController,
              children: [

                ListView.builder(
                  itemCount: widget.transactionTableModelList.length,
                  itemBuilder: (context, item) => Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
                    child: TransactionTableWidget(
                      tabIndex: 0,
                      tableModel: widget.transactionTableModelList[item],
                    ),
                  ),
                ),

                ListView.builder(
                  itemCount: widget.transactionTableModelList.length,
                  itemBuilder: (context, item) => Padding(
                    padding: const EdgeInsets.only(bottom: Dimensions.paddingSizeSmall),
                    child: TransactionTableWidget(
                      tabIndex: 1,
                      tableModel: widget.transactionTableModelList[item],
                    ),
                  ),
                ),




              ]
          ),
        ) : const NoDataWidget(),
      ),
    );
  }
}




