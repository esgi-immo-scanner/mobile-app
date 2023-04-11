import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:immo_scanner/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({Key? key, this.alignment, this.margin, this.value, this.onChanged}) : super(key: key);

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(44),
        toggleSize: 24,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        activeColor: ColorConstant.blue500,
        activeToggleColor: ColorConstant.gray50,
        inactiveColor: ColorConstant.blueGray50,
        inactiveToggleColor: ColorConstant.gray50,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
