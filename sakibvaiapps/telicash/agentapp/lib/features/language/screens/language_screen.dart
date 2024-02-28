
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/language/controllers/localization_controller.dart';
import 'package:six_cash/util/app_constants.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_logo_widget.dart';
import 'package:six_cash/common/widgets/custom_small_button_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/features/language/widgets/language_widget.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  @override
  void initState() {
    final LocalizationController localizationController = Get.find<LocalizationController>();

    localizationController.loadCurrentLanguage().then((index) => localizationController.setSelectIndex(index, isUpdate: false));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    final LocalizationController localizationController = Get.find<LocalizationController>();

    localizationController.loadCurrentLanguage().then((index) => localizationController.setSelectIndex(index, isUpdate: false));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbarWidget(title: 'language'.tr),
      body: SafeArea(child: GetBuilder<LocalizationController>(
        builder: (localizationController)=> Column(children: [
          Expanded(child: Center(child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(Dimensions.paddingSizeSmall),
            child: Center(child: SizedBox(width: context.width, child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: CustomLogoWidget(
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(height: Dimensions.paddingSizeOverLarge),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraSmall),
                    child: Text('select_language'.tr, style: rubikMedium.copyWith(
                      color: Theme.of(context).textTheme.titleLarge!.color,
                      fontSize: Dimensions.fontSizeExtraLarge,
                    )),
                  ),
                  const SizedBox(height: Dimensions.paddingSizeExtraSmall),

                  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                    ),
                    itemCount: localizationController.languages.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => LanguageWidget(
                      languageModel:
                      localizationController.languages[index],
                      localizationController: localizationController,
                      index: index,
                    ),
                  ),
                  const SizedBox(height: Dimensions.paddingSizeLarge),

                  Text(
                    'you_can_change_language'.tr,
                    style: rubikRegular.copyWith(
                      fontSize: Dimensions.fontSizeSmall,
                      color: Theme.of(context).disabledColor,
                    ),
                  ),

                ]))),
          ))),

          Padding(
            padding:const EdgeInsets.all(Dimensions.paddingSizeDefault),
            child: Row(children: [
              Expanded(child: CustomSmallButtonWidget(
                onTap: () {
                  if (localizationController.languages.isNotEmpty &&
                      localizationController.selectedIndex != -1) {
                    localizationController.setLanguage(Locale(
                      AppConstants.languages[localizationController.selectedIndex]
                          .languageCode!,
                      AppConstants.languages[localizationController.selectedIndex]
                          .countryCode,
                    ));
                    Get.back();
                  } else {
                    showCustomSnackBarHelper('select_a_language'.tr,isError: false);
                  }
                },
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                text: 'save'.tr,
                textColor: Theme.of(context).textTheme.bodyLarge!.color,
              )),
            ]),
          ),
        ]),
      )),
    );
  }
}
