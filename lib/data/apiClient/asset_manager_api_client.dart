import 'package:asset_manager/api.dart';
import 'package:immo_scanner/core/app_export.dart';

class AssetManagerClient extends GetConnect {

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

  Future<List<Asset>?> listAsset() {
    (defaultApiClient.authentication as HttpBearerAuth).accessToken(Get.find<PrefUtils>().getToken());

    return DefaultApi(defaultApiClient).searchAssets();
  }
}
