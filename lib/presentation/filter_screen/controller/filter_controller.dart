import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/filter_screen/models/filter_model.dart';
import 'package:immo_scanner/presentation/filter_screen/models/lessMoreCounter_item_model.dart';
import 'package:immo_scanner/widgets/custom_button.dart';

class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  Rx<RangeValues> rangePrice = const RangeValues(0, 1000000).obs;
  Rx<RangeValues> rangeSurface = const RangeValues(0, 500).obs;

  RxBool isHomeSelected = true.obs;
  RxBool isAppartmentSelected = false.obs;

  Rx<ButtonVariant> appartmentButtonVariant = ButtonVariant.OutlineBluegray40014Disabled.obs;
  Rx<ButtonVariant> homeButtonVariant = ButtonVariant.OutlineBluegray40014.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelectedDPEMin(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemListDPEMin.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemListDPEMin.refresh();
  }

  onSelectedDPEMax(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemListDPEMax.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemListDPEMax.refresh();
  }

  onSelectedGESMin(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemGESMin.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemGESMin.refresh();
  }

  onSelectedGESMax(dynamic value) {
    selectedDropDownValue3 = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemGESMax.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemGESMax.refresh();
  }


  void onRangePriceChanged(RangeValues values) {
    rangePrice.value = values;
  }
  void onRangeSurfaceChanged(RangeValues values) {
    rangeSurface.value = values;
  }

  onTapHomeButton(){
    print("onTapHomeButton");
    appartmentButtonVariant.value = ButtonVariant.OutlineBluegray40014Disabled;
    homeButtonVariant.value = ButtonVariant.OutlineBluegray40014;
    isHomeSelected.value = true;
    isAppartmentSelected.value = false;
  }

  onTapAppartmentButton(){
    print("onTapAppartmentButton");
    appartmentButtonVariant.value = ButtonVariant.OutlineBluegray40014;
    homeButtonVariant.value = ButtonVariant.OutlineBluegray40014Disabled;
    isHomeSelected.value = false;
    isAppartmentSelected.value = true;
  }

  onLessMoreItemMinus(LessMoreItemModel leModel){
    leModel.decrementValue();
  }

  onLessMoreItemPlus(LessMoreItemModel leModel){
    leModel.incrementValue();
  }

  reset(){
    filterModelObj.value.dropdownItemListDPEMin.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.value.dropdownItemListDPEMin[0].isSelected = true;
    filterModelObj.value.dropdownItemListDPEMin.refresh();

    filterModelObj.value.dropdownItemListDPEMax.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.value.dropdownItemListDPEMax[0].isSelected = true;
    filterModelObj.value.dropdownItemListDPEMax.refresh();

    filterModelObj.value.dropdownItemGESMin.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.value.dropdownItemGESMin[0].isSelected = true;
    filterModelObj.value.dropdownItemGESMin.refresh();

    filterModelObj.value.dropdownItemGESMax.forEach((element) {
      element.isSelected = false;
    });
    filterModelObj.value.dropdownItemGESMax[0].isSelected = true;
    filterModelObj.value.dropdownItemGESMax.refresh();

    filterModelObj.value.listMoreLessItemList.forEach((element) {
      element.resetValue();
    });

    rangePrice.value = const RangeValues(0, 1000000);
    rangeSurface.value = const RangeValues(0, 500);

    isHomeSelected.value = true;
    isAppartmentSelected.value = false;

    appartmentButtonVariant.value = ButtonVariant.OutlineBluegray40014Disabled;
    homeButtonVariant.value = ButtonVariant.OutlineBluegray40014;
  }
  /*

  Range prix
  Range surface

  + - Nb chambre
  + - piece

  Menu deroulant DPE
  Menu deroulant GES

  Supprimer property type

  Amneties : 
  Ascenceur, RDC, Places de parking, Urgent, Sans honoraires

  */

}
