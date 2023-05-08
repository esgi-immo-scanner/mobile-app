import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/apiClient/asset_manager_api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(AssetManagerClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
