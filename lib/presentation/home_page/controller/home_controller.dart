import 'package:asset_manager/api.dart';
import 'package:bookmarks/api.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/apiClient/asset_manager_api_client.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:immo_scanner/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController group34551Controller = TextEditingController();

  Rx<HomeModel> homeModelObj;

  SelectionPopupModel? selectedDropDownValue;

  Profile getMeResp = Profile();

  RxList<Asset> assetList = <Asset>[].obs;
  RxInt count = 0.obs;

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

  // void _getFav() async {
  //   // print(await Get.find<AssetManagerClient>().listAsset());
  //   List<Bookmark>? assetList = await Get.find<FavoritesApi>().userBookmarks();
    
  // }
}
