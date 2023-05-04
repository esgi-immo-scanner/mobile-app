import 'package:firebase_auth/firebase_auth.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/profile_page/models/profile_model.dart';

class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  Rx<ProfileModel> profileModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> callLogout() async {
    await FirebaseAuth.instance.signOut();
    _handleLogoutSuccess();
  }

  void _handleLogoutSuccess() async {
    Get.find<PrefUtils>().clearPreferencesData();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
