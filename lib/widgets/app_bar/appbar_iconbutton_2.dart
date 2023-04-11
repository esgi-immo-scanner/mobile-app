import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton2 extends StatelessWidget {
  AppbarIconbutton2({Key? key, this.imagePath, this.svgPath, this.margin, this.onTap}) : super(key: key);

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 48,
          width: 48,
          variant: IconButtonVariant.OutlineBluegray40014,
          shape: IconButtonShape.CircleBorder24,
          padding: IconButtonPadding.PaddingAll12,
          child: CustomImageView(
            svgPath: svgPath,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
