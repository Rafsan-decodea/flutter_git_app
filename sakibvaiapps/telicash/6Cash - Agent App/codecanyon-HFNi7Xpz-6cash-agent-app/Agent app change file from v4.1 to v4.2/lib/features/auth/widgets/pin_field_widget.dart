import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';
import 'package:six_cash/common/widgets/custom_password_field_widget.dart';

class PinFieldWidget extends StatefulWidget {
  final TextEditingController pinController;
  final TextEditingController confirmPinController;
  final bool isRegistration;

   const PinFieldWidget({
     Key? key,
     required this.pinController,
     required this.confirmPinController,
     this.isRegistration = true
   }) : super(key: key);

  @override
  State<PinFieldWidget> createState() => _PinFieldWidgetState();
}

class _PinFieldWidgetState extends State<PinFieldWidget> {
   final FocusNode confirmFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSizeExtraExtraLarge,
        vertical: Dimensions.paddingSizeExtraExtraLarge,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radiusSizeExtraExtraLarge),
          topRight: Radius.circular(Dimensions.radiusSizeExtraExtraLarge),
        ),
      ),
      child: SingleChildScrollView(child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dimensions.radiusSizeExtraExtraLarge),
          child: Text(
            widget.isRegistration ?  'set_your_4_digit'.tr : 'set_new_4_digit_pin'.tr,
            textAlign: TextAlign.center,
            style: rubikMedium.copyWith(
              color: Theme.of(context).textTheme.titleLarge!.color,
              fontSize: Dimensions.fontSizeExtraOverLarge,
            ),
          ),
        ),
        const SizedBox(height: Dimensions.paddingSizeExtraOverLarge),

        CustomPasswordFieldWidget(
          controller: widget.pinController,
          nextFocus: confirmFocus,
          isPassword: true,
          isShowSuffixIcon: true,
          isIcon: false,
          hint: 'set_your_pin'.tr,
          letterSpacing: 10.0,

        ),
        const SizedBox(height: Dimensions.paddingSizeExtraLarge),

        CustomPasswordFieldWidget(
          controller: widget.confirmPinController,
          focusNode: confirmFocus,
          hint: 'confirm_pin'.tr,
          isShowSuffixIcon: true,
          isPassword: true,
          isIcon: false,
          letterSpacing: 10.0,
        ),

      ])),
    );
  }
}
