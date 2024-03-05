
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/transaction_money/domain/models/withdraw_model.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_text_field_widget.dart';

class FieldItemWidget extends StatelessWidget {
  final MethodField? methodField;
  final Map<String?, TextEditingController>? textControllers;
  const FieldItemWidget({Key? key, this.methodField, this.textControllers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Text(
                methodField!.inputName!.replaceAll('_', ' ').formattedUpperCase(),
                style: rubikRegular.copyWith(color: Theme.of(context).primaryColor),
              ),
             const SizedBox(width: Dimensions.paddingSizeExtraSmall,),

             if(methodField!.inputType == 'phone') Text(
                '*${'must_use_country_code'.tr}',
                style: rubikRegular.copyWith(color: Theme.of(context).colorScheme.error, fontSize: Dimensions.fontSizeSmall),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5,),

        CustomTextFieldWidget(
          controller: textControllers![methodField!.inputName],
          hintText:  methodField!.placeHolder,
          inputType:  _getType(methodField!.inputType),
          fillColor: Theme.of(context).cardColor,
          isPassword: methodField!.inputType == 'password',
        ),
        const SizedBox(height: 10,),
      ],
    );
  }

  TextInputType _getType(String? type) {
    switch(type) {
      case 'number': {
        return TextInputType.number;
      }
      case 'date': {
        return TextInputType.datetime;
      }
      case 'password': {
        return TextInputType.visiblePassword;
      }
      case 'email': {
        return TextInputType.emailAddress;
      }
      case 'phone': {
        return TextInputType.phone;
      }
      default: {
        return TextInputType.text;
      }
    }
  }
}

extension StringExtension on String {
  String formattedUpperCase() => replaceAllMapped(
      RegExp(r'(?<= |-|^).'), (match) => match[0]!.toUpperCase());
}



