import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/common/models/contact_model.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/util/styles.dart';

class PersonPreviewWidget extends StatelessWidget {
  final ContactModel? contactModel;
  const PersonPreviewWidget({Key? key, this.contactModel, }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: _PreviewContactTile(contactModel: contactModel)),
          ],
        ),

        Container(height: Dimensions.dividerSizeMedium, color: Theme.of(context).dividerColor),


      ],
    );
  }
}

class _PreviewContactTile extends StatelessWidget {
  final ContactModel? contactModel;
  const _PreviewContactTile({Key? key, required this.contactModel,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String phoneNumber = contactModel!.phoneNumber!;
    if(phoneNumber.contains('-')){
      phoneNumber.replaceAll('-', '');
    }else if(!phoneNumber.contains(Get.find<AuthController>().getUserData()!.countryCode!)){
      //todo need to check
      phoneNumber = Get.find<AuthController>().getUserData()!.countryCode!+phoneNumber.substring(1).trim();
    }
    return ListTile(
      title:  Text(contactModel!.name==null?phoneNumber: contactModel!.name!, style: rubikRegular.copyWith(fontSize: Dimensions.fontSizeLarge)),
      subtitle:phoneNumber.isEmpty? const SizedBox():
      Text(phoneNumber, style: rubikLight.copyWith(fontSize: Dimensions.fontSizeLarge, color: Theme.of(context).textTheme.bodyLarge!.color!.withOpacity(Get.isDarkMode ? 0.8 :0.5)),),
    );
  }
}
