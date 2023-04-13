import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal900,
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgHomeWhiteA700,
                          height: getVerticalSize(99),
                          width: getHorizontalSize(90),
                          margin: getMargin(bottom: 5))
                    ]))));
  }
}
