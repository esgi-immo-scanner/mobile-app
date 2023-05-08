import 'package:asset_manager/api.dart';
import 'package:immo_scanner/core/app_export.dart';

class AssetManagerClient extends GetConnect {
  var client = DefaultApi(ApiClient(authentication: HttpBearerAuth()));

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future<AssetPagination?> listAsset() async {
    (client.apiClient.authentication as HttpBearerAuth).accessToken =
        Get.find<PrefUtils>().getToken();

    try {
      return await client.searchAssets();
    } catch (e) {
      Get.snackbar("Error", "Error while recovering recomamndation");
    }
  }
}
