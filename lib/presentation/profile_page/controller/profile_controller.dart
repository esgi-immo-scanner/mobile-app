import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:immo_scanner/presentation/profile_page/models/profile_model.dart';

class ProfileController extends GetxController {
  // ProfileController(this.profileModelObj);
  ProfileController();


  Rx<Profile> getMeResp = Profile().obs;


  // Rx<ProfileModel> profileModelObj;

  @override
  Future<void> onReady() async {
    super.onReady();
    print("onReady ProfileController");
    try {
      await callFetchMe();
      _onFetchMeSuccess();
    } on Profile {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  Future<void> callLogout() async {
    await FirebaseAuth.instance.signOut();
    _handleLogoutSuccess();
  }

  void _handleLogoutSuccess() async {
    Get.find<PrefUtils>().logoutClear();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> callFetchMe() async {
    print("callFetchMe ProfileController");
    try {
      var user = FirebaseAuth.instance.currentUser;
      getMeResp.value = Profile(
        fullName: user!.displayName,
        email: user.email,
        address: Get.find<PrefUtils>().initAndGetAddress(),
        photoUrl: user.photoURL,
      );
      // _handleFetchMeSuccess();
    } on Profile catch (e) {
      getMeResp.value = e;
      rethrow;
    }
  }

  // void _handleFetchMeSuccess() {
  //   // emailOneController.text = getMeResp.email!.toString();
  //   // fullnameOneController.text = getMeResp.fullName!.toString();
  //   // photoController.text = getMeResp.photoUrl!.toString();
  //   // addressOneController.text = Get.find<PrefUtils>().initAndGetAddress();
  //   print("handleFetchMeSuccess ProfileController");
  //   profileModelObj.update((val) {
  //     val!.fullName.value = getMeResp.value.fullName.toString();
  //     val.email.value = getMeResp.value.email.toString();
  //     val.address.value = Get.find<PrefUtils>().initAndGetAddress().toString();
  //     val.photoUrl.value = getMeResp.value.photoUrl.toString();
  //   });
  // }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {
    Fluttertoast.showToast(
      msg: "Error fetching profile data",
    );
  }
  
}
