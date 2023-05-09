import 'package:firebase_auth/firebase_auth.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:immo_scanner/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController group34551Controller = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  Profile getMeResp = Profile();

  @override
  Future<void> onReady() async {
    Get.find<PrefUtils>().initAndGetAddress();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group34551Controller.dispose();
    print("onClose");
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }
}
