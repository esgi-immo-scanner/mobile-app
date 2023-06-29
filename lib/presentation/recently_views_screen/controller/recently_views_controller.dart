import 'package:asset_manager/api.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/apiClient/asset_manager_api_client.dart';

class RecentlyViewsController extends GetxController {
  // Rx<RecentlyViewsModel> recentlyViewsModelObj = RecentlyViewsModel().obs;
  RxList<Asset> assetList = <Asset>[].obs;
  RxInt count = 0.obs;

  @override
  void onReady() {
    super.onReady();
    _listAssets();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void _listAssets() async {
    print(await Get.find<AssetManagerClient>().listAsset());
    AssetPagination? assetPagination = await Get.find<AssetManagerClient>().listAsset();
    for (var element in assetPagination!.data) {
      assetList.add(element);
    }
    count.value = assetPagination.totalRows ?? 0;
  }

}