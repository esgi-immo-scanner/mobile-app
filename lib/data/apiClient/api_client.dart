import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/core/utils/progress_dialog_utils.dart';
import 'package:immo_scanner/data/models/login/post_login_resp.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:immo_scanner/data/models/register/post_register_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://nodedemo.dhiwise.co";

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
}
