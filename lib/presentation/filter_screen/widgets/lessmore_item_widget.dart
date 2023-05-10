import 'package:immo_scanner/presentation/filter_screen/models/lessMoreCounter_item_model.dart';

import '../controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';

// ignore: must_be_immutable
class ListLessMoreItemWidget extends StatelessWidget {
  ListLessMoreItemWidget(this.listLessMoreItemModelObj);

  LessMoreItemModel listLessMoreItemModelObj;

  var controller = Get.find<FilterController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Obx(
              () => Text(
                listLessMoreItemModelObj.titleTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeMedium16.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () => controller.onLessMoreItemMinus(listLessMoreItemModelObj),
            child: Obx(() => CustomImageView(
              svgPath: listLessMoreItemModelObj.iconMoins.value,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
            ),),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 1,
            ),
            child: Obx(
              () => Text(
                listLessMoreItemModelObj.valueTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtManropeExtraBold16Gray900.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => controller.onLessMoreItemPlus(listLessMoreItemModelObj),
            child: CustomImageView(
              svgPath: ImageConstant.imgPlus1,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              margin: getMargin(
                left: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
