import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/custom_button.dart';
import 'package:immo_scanner/widgets/custom_text_form_field.dart';
import 'package:immo_scanner/data/models/register/post_register_req.dart';
import 'package:immo_scanner/data/models/register/post_register_resp.dart';
import 'package:immo_scanner/core/constants/role.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 39, right: 24, bottom: 39),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_create_a".tr,
                                style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(24),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w800)),
                            TextSpan(
                                text: "lbl_immoscanner_account".tr,
                                style: TextStyle(
                                    color: ColorConstant.blue500,
                                    fontSize: getFontSize(24),
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.w800))
                          ]),
                          textAlign: TextAlign.left),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("msg_create_an_accou".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManrope16.copyWith(
                                  letterSpacing: getHorizontalSize(0.3)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.fullnameController,
                          hintText: "lbl_full_name".tr,
                          margin: getMargin(top: 40)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.phonenumberController,
                          hintText: "lbl_phone_number".tr,
                          margin: getMargin(top: 16),
                          textInputType: TextInputType.phone),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 15, right: 16, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgEye
                                          : ImageConstant.imgEye))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(49)),
                          isObscureText: !controller.isShowPassword.value)),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_sign_up".tr,
                          margin: getMargin(top: 24),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16Gray50_1,
                          onTap: onTapSignup),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 85),
                              child: Text("msg_or_continue_wit".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope16.copyWith(
                                      letterSpacing: getHorizontalSize(0.3))))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_google".tr,
                          margin: getMargin(top: 24),
                          variant: ButtonVariant.OutlineBluegray500,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          onTap: onTapGoogle),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 22, top: 27, right: 21, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("msg_you_already_hav2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtManrope16.copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.3))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignup();
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("lbl_sign_in".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtManropeExtraBold16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2)))))
                                  ])))
                    ]))));
  }

  Future<void> onTapSignup() async {
    PostRegisterReq postRegisterReq = PostRegisterReq(
      username: controller.phonenumberController.text,
      password: controller.passwordController.text,
      name: controller.fullnameController.text,
      role: Role.user,
    );
    try {
      await controller.callCreateRegister(
        postRegisterReq.toJson(),
      );
      _onOnTapSignUpSuccess();
    } on PostRegisterResp {
      _onOnTapSignUpError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSignUpSuccess() {
    Get.offNamed(AppRoutes.homeContainerScreen);
  }

  void _onOnTapSignUpError() {
    Fluttertoast.showToast(
      msg: controller.postRegisterResp.message!.toString(),
    );
  }

  // TODO replace by firebase
  onTapGoogle() async {
    print("TODO");
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
