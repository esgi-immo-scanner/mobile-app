import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/custom_button.dart';
import 'package:immo_scanner/widgets/custom_text_form_field.dart';
import 'package:immo_scanner/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 39, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_welcome_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold24Gray900)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 9),
                              child: Text("msg_sign_in_to_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope16.copyWith(
                                      letterSpacing: getHorizontalSize(0.3))))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailController,
                          hintText: "lbl_email".tr,
                          margin: getMargin(top: 20),
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
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 20),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16Gray50_1,
                          onTap: onTapSignin),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeSemiBold14)),
                      const Spacer(),
                      Text("msg_or_continue_wit".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManrope16
                              .copyWith(letterSpacing: getHorizontalSize(0.3))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_google".tr,
                          margin: getMargin(top: 10),
                          variant: ButtonVariant.OutlineBluegray500,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          onTap: onTapGoogle),
                      Padding(
                          padding: getPadding(left: 42, top: 30, right: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_don_t_have_an_a2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManrope16.copyWith(
                                        letterSpacing: getHorizontalSize(0.3))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeExtraBold16
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))))
                              ]))
                    ]))));
  }

  Future<void> onTapSignin() async {
    try {
      await controller.callCreateLogin(
          controller.emailController.text, controller.passwordController.text);
      _onOnTapSignInSuccess();
    } on PostLoginResp {
      _onOnTapSignInError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      Get.rawSnackbar(message: "Critical error : ${e.toString()}");
    }
  }

  void _onOnTapSignInSuccess() {
    Get.offNamed(AppRoutes.homeContainerScreen);
  }

  void _onOnTapSignInError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  // TODO replace by firebase
  onTapGoogle() async {
    try {
      await controller.callGoogleSignIn();
      _onOnTapSignInSuccess();
    } catch (err) {
      Get.snackbar('Error', err.toString());
    }
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
