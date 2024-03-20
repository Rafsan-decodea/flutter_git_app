import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/add_money/controllers/add_money_controller.dart';
import 'package:six_cash/features/profile/controllers/profile_screen_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/qr_code_scanner_controller.dart';
import 'package:six_cash/features/profile/domain/models/profile_model.dart';
import 'package:six_cash/features/splash/controllers/splash_controller.dart';
import 'package:six_cash/features/transaction_money/controllers/transaction_controller.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/features/transaction_money/domain/models/withdraw_model.dart';
import 'package:six_cash/helper/transaction_type.dart';
import 'package:six_cash/helper/email_checker.dart';
import 'package:six_cash/helper/price_converter.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_country_code_picker_widget.dart';
import 'package:six_cash/common/widgets/custom_loader_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/features/add_money/widgets/digital_payment_widget.dart';
import 'package:six_cash/features/camera_verification/screens/camera_screen.dart';
import 'package:six_cash/features/transaction_money/screens/transaction_confirmation_screen.dart';
import 'package:six_cash/features/transaction_money/widgets/field_item_widget.dart';
import '../widgets/input_box_widget.dart';
import '../widgets/next_button_widget.dart';
import '../widgets/scan_button_widget.dart';


class BalanceInputScreen extends StatefulWidget {
  final String? transactionType;
  final String? transactionNumber;
   const BalanceInputScreen({Key? key, this.transactionType, this.transactionNumber = ''}) : super(key: key);
  @override
  State<BalanceInputScreen> createState() => _BalanceInputScreenState();
}

class _BalanceInputScreenState extends State<BalanceInputScreen> {
  final TextEditingController _inputAmountController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final qrScannerController = Get.find<QrCodeScannerController>();
  final splashController = Get.find<SplashController>();
  String? _selectedMethodId;
  List<MethodField>? _fieldList;
  List<MethodField>? _gridFieldList;
  Map<String?, TextEditingController> _textControllers =  {};
  Map<String?, TextEditingController> _gridTextController =  {};
  final FocusNode _inputAmountFocusNode = FocusNode();


  String? _countryCode = '';

  void setFocus() {
    _inputAmountFocusNode.requestFocus();
    Get.back();
  }

  @override
  void initState() {
    super.initState();
    _countryCode = CountryCode.fromCountryCode('${Get.find<SplashController>().configModel!.country}').dialCode;

    if(widget.transactionType == TransactionType.withdrawRequest) {
      Get.find<TransactionMoneyController>().getWithdrawMethods(isReload: true);
    }
    Get.find<QrCodeScannerController>().setValue();

    Get.find<TransactionMoneyController>().selectAmountSet(null);
    Get.find<AddMoneyController>().updatePaymentMethod(null, isUpdate: false);
  }

  @override
  void dispose() {
    _inputAmountController.dispose();
    _inputAmountFocusNode.dispose();
    _phoneController.dispose();

    _textControllers.forEach((key, textController) {
      textController.dispose();
    });

    _gridTextController.forEach((key, textController) {
      textController.dispose();
    });

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.find<QrCodeScannerController>().setValue();

    if((widget.transactionNumber?.isNotEmpty ?? false)){
      _countryCode = CustomCountryCodePikerWidget.getCountryCode(widget.transactionNumber);
      _phoneController.text = widget.transactionNumber!.replaceAll(_countryCode!, '');

    }
    final ProfileController profileController = Get.find<ProfileController>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CustomAppbarWidget(
          title: widget.transactionType == TransactionType.sendMoney ?
          'send_money'.tr : widget.transactionType == TransactionType.withdrawRequest ?
          'withdraw_request'.tr : widget.transactionType == TransactionType.addMoney ?
          'add_money'.tr : 'request_money_to_admin'.tr,
        ),

        body: GetBuilder<TransactionMoneyController>(
          builder: (transactionMoneyController) {
            if(widget.transactionType == TransactionType.withdrawRequest &&
                transactionMoneyController.withdrawModel == null) {
              return CustomLoaderWidget(color: Theme.of(context).primaryColor);
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  if(widget.transactionType == TransactionType.sendMoney)
                    Column(children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                        color: ColorResources.getGreyBaseGray3(),
                        child: Row(children: [
                          Expanded(child: TextField(
                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(top: Dimensions.paddingSizeDefault),
                              hintText: 'customer_mobile_number'.tr,
                              hintStyle: rubikRegular.copyWith(
                                fontSize: Dimensions.fontSizeLarge,
                                color: Theme.of(context).textTheme.bodyLarge!.color!.
                                withOpacity(Get.isDarkMode ? 0.8 :0.5),
                              ),
                              prefixIcon: CustomCountryCodePikerWidget(
                                initSelect: _countryCode,
                                onChanged: (countryCode) => _countryCode = countryCode.dialCode,
                              ),
                            ),
                          )),

                          Icon(Icons.search, color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(Get.isDarkMode ? 0.8 :0.5)),
                        ]),
                      ),
                      Divider(height: Dimensions.dividerSizeSmall, color: Theme.of(context).dividerColor),

                      Container(
                        color: Theme.of(context).cardColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSizeLarge,
                          vertical: Dimensions.paddingSizeSmall,
                        ),
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ScanButtonWidget(
                              onTap: () => Get.off(() => CameraScreen(
                                fromEditProfile: false,
                                transactionType: widget.transactionType,
                                isBarCodeScan: true,
                              )),),

                          ],
                        ),
                      ),
                      Container(height: Dimensions.dividerSizeMedium, color: Theme.of(context).hintColor.withOpacity(0.1)),
                    ],
                    ),


                  if(widget.transactionType == TransactionType.withdrawRequest)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: Dimensions.paddingSizeDefault,
                        horizontal: Dimensions.paddingSizeSmall,
                      ),
                      child: Column(children: [
                        Container(
                          height: context.height * 0.05,
                          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(Dimensions.radiusSizeSmall),
                            border: Border.all(color: Theme.of(context).primaryColor.withOpacity(0.4)),
                          ),

                          child: DropdownButton<String>(
                            menuMaxHeight: Get.height * 0.5,
                            hint: Text(
                              'select_a_method'.tr,
                              style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeSmall),
                            ),
                            value: _selectedMethodId,
                            items: transactionMoneyController.withdrawModel!.withdrawalMethods.map((withdraw) =>
                                DropdownMenuItem<String>(
                                  value: withdraw.id.toString(),
                                  child: Text(
                                    withdraw.methodName ?? 'no method',
                                    style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeSmall),
                                  ),
                                )
                            ).toList(),

                            onChanged: (id) {
                              _selectedMethodId = id;
                              _gridFieldList = [];
                              _fieldList = [];

                              transactionMoneyController.withdrawModel!.withdrawalMethods.firstWhere((method) =>
                              method.id.toString() == id).methodFields.forEach((method) {
                                _gridFieldList!.addIf(method.inputName!.contains('cvv') || method.inputType == 'date', method);
                              });


                              transactionMoneyController.withdrawModel!.withdrawalMethods.firstWhere((method) =>
                              method.id.toString() == id).methodFields.forEach((method) {
                                _fieldList!.addIf(!method.inputName!.contains('cvv') && method.inputType != 'date', method);
                              });

                              _textControllers = _textControllers =  {};
                              _gridTextController = _gridTextController =  {};

                              for (var method in _fieldList!) {
                                _textControllers[method.inputName] = TextEditingController();
                              }
                              for (var method in _gridFieldList!) {
                                _gridTextController[method.inputName] = TextEditingController();
                              }

                              transactionMoneyController.update();
                            },

                            isExpanded: true,
                            underline: const SizedBox(),
                          ),
                        ),

                        const SizedBox(height: Dimensions.paddingSizeDefault),

                        if(_fieldList != null && _fieldList!.isNotEmpty) ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _fieldList!.length,
                          padding: const EdgeInsets.symmetric(
                            vertical: Dimensions.paddingSizeExtraSmall, horizontal: 10,
                          ),

                          itemBuilder: (context, index) => FieldItemWidget(
                            methodField:_fieldList![index],
                            textControllers: _textControllers,
                          ),
                        ),

                        if(_gridFieldList != null && _gridFieldList!.isNotEmpty)

                          GridView.builder(
                            padding: const EdgeInsets.symmetric(
                              vertical: Dimensions.paddingSizeExtraSmall, horizontal: 10,
                            ),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                            ),
                            itemCount: _gridFieldList!.length,

                            itemBuilder: (context, index) => FieldItemWidget(
                              methodField: _gridFieldList![index],
                              textControllers: _gridTextController,
                            ),
                          ),

                      ],),
                    ),


                  InputBoxWidget(
                    inputAmountController: _inputAmountController,
                    focusNode: _inputAmountFocusNode,
                  ),

                  if(widget.transactionType == TransactionType.addMoney)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeDefault),
                      child: DigitalPaymentWidget(),
                    ),

                ],
              ),
            );
          }
        ),

        floatingActionButton: GetBuilder<TransactionMoneyController>(
          builder: (transactionMoneyController) {
            bool isDisableButton = (widget.transactionType == TransactionType.withdrawRequest && transactionMoneyController.withdrawModel == null);

            return FloatingActionButton(
              onPressed: isDisableButton ? null : () => _onSubmit(profileController, transactionMoneyController),
              backgroundColor: Theme.of(context).secondaryHeaderColor,

              child: GetBuilder<AddMoneyController>(
                builder: (addMoneyController) {
                  return GetBuilder<TransactionMoneyController>(
                    id: 'inout_screen_button_id',
                    builder: (transactionMoneyController) => addMoneyController.isLoading || transactionMoneyController.isLoading
                        ? const CircularProgressIndicator() : const NextButtonWidget(isSubmittable: true),
                  );
                }
              ),
            );
          }
        )

      ),
    );
  }

  void _onSubmit(ProfileController profileController, TransactionMoneyController transactionMoneyController) {
    String phoneNumber = '$_countryCode${_phoneController.text}';
    double amount;
    if(_inputAmountController.text.isEmpty){
      showCustomSnackBarHelper('please_input_amount'.tr,isError: true);
    }else{
      String balance =  _inputAmountController.text;
      balance = balance.replaceAll('${splashController.configModel!.currencySymbol}', '');
      if(balance.contains(',')){
        balance = balance.replaceAll(',', '');
      }
      if(balance.contains(' ')){
        balance = balance.replaceAll(' ', '');
      }

      amount = double.parse(balance);
      if(amount == 0) {
        showCustomSnackBarHelper('transaction_amount_must_be'.tr);
      }else {

        if(_isInSufficientBalance(amount, profileController.profileModel)) {
          showCustomSnackBarHelper('insufficient_balance'.tr);
        }else if(widget.transactionType == TransactionType.addMoney){
          final addMoneyController = Get.find<AddMoneyController>();
          if(addMoneyController.paymentMethod != null){
            addMoneyController.addMoney(amount);
          }else{
            showCustomSnackBarHelper('please_select_a_payment'.tr);
          }
        }else if(widget.transactionType == TransactionType.requestMoney){
          transactionMoneyController.requestMoney(amount: amount);
        }
        else if(widget.transactionType == TransactionType.sendMoney){
          transactionMoneyController.checkCustomerNumber(phoneNumber: phoneNumber).then((value) {
            if (value.isOk) {
              String? customerName = value.body['data']['name'];
              String? customerImage = value.body['data']['image'];

              Get.to(() => TransactionConfirmationScreen(
                inputBalance: amount, transactionType: widget.transactionType,
                contactModel: ContactModel(
                  phoneNumber: phoneNumber ,
                  name: customerName,
                  avatarImage: customerImage,
                ),
                callBack: setFocus,
              ));
            }
          });

        }else if(widget.transactionType == TransactionType.withdrawRequest) {

          String? message;
          WithdrawalMethod? withdrawMethod = transactionMoneyController.withdrawModel!.withdrawalMethods.
          firstWhereOrNull((method) => _selectedMethodId == method.id.toString());

          List<MethodField> list = [];
          String? validationKey = '';

          if(withdrawMethod != null){
            for (var method in withdrawMethod.methodFields) {
              if(method.inputType == 'email' ||method.inputType == 'date') {
                validationKey = method.inputType;
              }
            }
          }else{
            message = 'please_select_a_method'.tr;
          }


          _textControllers.forEach((key, textController) {
            list.add(MethodField(
              inputName: key, inputType: null,
              inputValue: textController.text,
              placeHolder: null,
            ));

            if((validationKey == key) && EmailChecker.isNotValid(textController.text)) {
              message = 'please_provide_valid_email'.tr;
            }else if((validationKey == key) && textController.text.contains('-')) {
              message = 'please_provide_valid_date'.tr;
            }

            if(textController.text.isEmpty && message == null) {
              message = 'please fill ${key!.replaceAll('_', ' ')} field';
            }
          });

          _gridTextController.forEach((key, textController) {
            list.add(MethodField(
              inputName: key, inputType: null,
              inputValue: textController.text,
              placeHolder: null,
            ));

            if(validationKey == 'date' && textController.text.contains('-')) {
              message = 'please_provide_valid_date'.tr;
            }

            if(textController.text.isEmpty && message == null) {
              message = 'please fill ${key!.replaceAll('_', ' ')} field';
            }
          });

          if(message != null) {
            showCustomSnackBarHelper(message);
            message = null;

          }
          else{


            Get.to(() => TransactionConfirmationScreen(
              inputBalance: amount,
              transactionType: widget.transactionType,
              contactModel: null,
              withdrawMethod: WithdrawalMethod(
                methodFields: list,
                methodName: withdrawMethod!.methodName,
                id: withdrawMethod.id,
              ),
              callBack: setFocus,
            ));
          }

        }
      }
    }
  }


  bool _isInSufficientBalance(double amount, ProfileModel? profileModel) {
    bool inSufficientBalance = widget.transactionType != TransactionType.requestMoney && widget.transactionType != TransactionType.addMoney;

    if((widget.transactionType == TransactionType.withdrawRequest )) {
      if(PriceConverter.balanceWithCharge(amount, splashController.configModel!.withdrawChargePercent, true) >  (profileModel?.balance ?? 0)) {
        inSufficientBalance = true;

      }else{
        inSufficientBalance = false;
      }
    }


    if(widget.transactionType == TransactionType.sendMoney && (profileModel?.balance ?? 0) >= amount){
      inSufficientBalance = false;
    }

    return inSufficientBalance;
  }

}





