import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:six_cash/features/auth/controllers/auth_controller.dart';
import 'package:six_cash/features/camera_verification/controllers/camera_screen_controller.dart';
import 'package:six_cash/features/auth/domain/models/signup_body_mode.dart';
import 'package:six_cash/helper/dialog_helper.dart';
import 'package:six_cash/helper/email_checker.dart';
import 'package:six_cash/helper/route_helper.dart';
import 'package:six_cash/util/dimensions.dart';
import 'package:six_cash/common/widgets/custom_app_bar_widget.dart';
import 'package:six_cash/common/widgets/custom_dialog_widget.dart';
import 'package:six_cash/common/widgets/custom_large_button_widget.dart';
import 'package:six_cash/helper/custom_snackbar_helper.dart';
import 'package:six_cash/features/auth/widgets/gender_field_widget.dart';
import 'package:six_cash/features/auth/widgets/input_field_widget.dart';

class SignUpInformationScreen extends StatefulWidget {
  const SignUpInformationScreen({Key? key}) : super(key: key);

  @override
  State<SignUpInformationScreen> createState() => _SignUpInformationScreenState();
}

class _SignUpInformationScreenState extends State<SignUpInformationScreen> {
  TextEditingController occupationTextController = TextEditingController();
  TextEditingController fNameTextController = TextEditingController();
  TextEditingController lNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    occupationTextController.dispose();
    fNameTextController.dispose();
    lNameTextController.dispose();
    emailTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) => _onWillPop(context),
      child: Scaffold(
        appBar: CustomAppbarWidget(title: 'information'.tr, onTap: ()=> _onWillPop(context)),

        body: Column(children: [
          Expanded(flex: 10, child: SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GenderFieldWidget(),
              const SizedBox(height: Dimensions.paddingSizeLarge),

              InputFieldWidget(
                occupationController: occupationTextController,
                fNameController: fNameTextController,
                lNameController: lNameTextController,
                emailController: emailTextController,
              ),
              const SizedBox(height: Dimensions.paddingSizeExtraOverLarge),

            ],
          ))),

          SizedBox(height: 110, child: CustomLargeButtonWidget(
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            text: 'proceed'.tr,
            onTap: () {
              if (fNameTextController.text == '' || lNameTextController.text == '') {
                showCustomSnackBarHelper('first_name_or_last_name'.tr);
              }
              else {
                if(emailTextController.text != ''){
                  if(EmailChecker.isNotValid(emailTextController.text)){
                    showCustomSnackBarHelper('please_provide_valid_email'.tr);
                  }
                  else{
                    Get.toNamed(RouteHelper.getPinSetRoute(
                      signUpBody: SignUpBodyModel(
                        fName: fNameTextController.text,
                        lName: lNameTextController.text,
                        email: emailTextController.text,
                        occupation: occupationTextController.text,
                      ),
                    ));
                  }
                }
                else{
                  Get.toNamed(RouteHelper.getPinSetRoute(
                    signUpBody: SignUpBodyModel(
                      fName: fNameTextController.text,
                      lName: lNameTextController.text,
                      email: emailTextController.text,
                      occupation: occupationTextController.text,
                    ),
                  ));
                }
              }
            },
          )),
        ]),
      ),
    );
  }

  Future _onWillPop(BuildContext context) async {
    DialogHelper.showAnimatedDialog(context, CustomDialogWidget(
      icon: Icons.clear,
      title: 'alert'.tr,
      description: 'your_information_will_remove'.tr,
      isFailed: true,
      onTapFalse: ()=> Get.back(),
      onTapTrue: (){
        Get.find<CameraScreenController>().removeImage();
        Get.find<AuthController>().change(0);
        return Get.offAllNamed(RouteHelper.getSplashRoute());
        }),
      dismissible: false,
      isFlip: true,
    );
  }
}
