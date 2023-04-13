import '../my_home_page/widgets/my_home_item_widget.dart';
import 'controller/my_home_controller.dart';
import 'models/my_home_item_model.dart';
import 'models/my_home_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:immo_scanner/widgets/app_bar/appbar_subtitle.dart';
import 'package:immo_scanner/widgets/app_bar/custom_app_bar.dart';
import 'package:immo_scanner/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomeController controller = Get.put(MyHomeController(MyHomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 64,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_favorites".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount: controller
                              .myHomeModelObj.value.myHomeItemList.length,
                          itemBuilder: (context, index) {
                            MyHomeItemModel model = controller
                                .myHomeModelObj.value.myHomeItemList[index];
                            return MyHomeItemWidget(model,
                                onTapProperty: onTapProperty);
                          })),
                      // CustomButton(
                      //     height: getVerticalSize(56),
                      //     text: "msg_add_new_propert".tr,
                      //     margin: getMargin(top: 24, bottom: 5),
                      //     variant: ButtonVariant.OutlineBlue500_1,
                      //     shape: ButtonShape.RoundedBorder10,
                      //     padding: ButtonPadding.PaddingT17,
                      //     fontStyle: ButtonFontStyle.ManropeBold14Blue500_1,
                      //     prefixWidget: Container(
                      //         margin: getMargin(right: 10),
                      //         child: CustomImageView(
                      //             svgPath: ImageConstant.imgPlus24x24)),
                      //     onTap: onTapAddnewproperty)
                    ]))));
  }

  onTapProperty() {
    Get.toNamed(AppRoutes.productDetailsScreen);
  }

  onTapAddnewproperty() {
    Get.toNamed(AppRoutes.addNewPropertyAddressScreen);
  }

  onTapArrowleft4() {
    Get.back();
  }
}
