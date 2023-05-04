import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/add_new_property_home_facts_screen/models/add_new_property_home_facts_model.dart';
import 'package:flutter/material.dart';

class AddNewPropertyHomeFactsController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  TextEditingController inputThreeController = TextEditingController();

  TextEditingController inputFourController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController priceOneController = TextEditingController();

  Rx<AddNewPropertyHomeFactsModel> addNewPropertyHomeFactsModelObj =
      AddNewPropertyHomeFactsModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
    inputThreeController.dispose();
    inputFourController.dispose();
    priceController.dispose();
    priceOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    for (var element
        in addNewPropertyHomeFactsModelObj.value.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    addNewPropertyHomeFactsModelObj.value.dropdownItemList.refresh();
  }
}