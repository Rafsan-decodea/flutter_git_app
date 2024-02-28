import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/auth/controllers/forget_password_controller.dart';
import 'package:six_cash/features/auth/widgets/pin_field_widget.dart';
import 'package:six_cash/util/color_resources.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/features/auth/widgets/appbar_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResetPinScreen extends StatefulWidget {
  final String? phoneNumber;
  const ResetPinScreen({Key? key, this.phoneNumber}) : super(key: key);

  @override
  State<ResetPinScreen> createState() => _ResetPinScreenState();
}

class _ResetPinScreenState extends State<ResetPinScreen> {
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(children: [
        Column(children: [
          Expanded(flex: 5, child: Container(color: Theme.of(context).primaryColor)),

          Expanded(flex: 5, child: Container(color: Theme.of(context).cardColor))
        ]),

        const Positioned(
          top: Dimensions.paddingSizeOverLarge,
          left: 0, right: 0,
          child: AppbarHeaderWidget(),
        ),

        Positioned(top: 135, left: 0, right: 0, bottom: 0, child: PinFieldWidget(
          pinController: newPassController,
          confirmPinController: confirmPassController,
          isRegistration: false,
        )),

      ]),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20,right: 10),
        child:   FloatingActionButton(
          onPressed: ()=> Get.find<ForgetPassController>().resetPassword(
            newPassController,confirmPassController,widget.phoneNumber,
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          child: GetBuilder<AuthController>(builder: (controller)=> !controller.isLoading ? Center(child: Icon(Icons.arrow_forward,color: ColorResources.blackColor,size: 28,)) : SizedBox(height: 20.33,
              width: 20.33,child: CircularProgressIndicator(color: Theme.of(context).textTheme.titleLarge!.color)),),),
        ) ,

      );
  }
}
