import 'package:firebase_auth/firebase_auth.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfileController extends GetxController {
  TextEditingController fullnameOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController addressOneController = TextEditingController();

  TextEditingController photoController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  Rx<Profile> getMeResp = Profile().obs;

  @override
  Future<void> onReady() async {
    super.onReady();
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

  @override
  void onClose() {
    super.onClose();
    fullnameOneController.dispose();
    emailOneController.dispose();
    addressOneController.dispose();
    photoController.dispose();
    editProfileModelObj.close();
  }

  Future<void> callFetchMe() async {
    print("Fetching profile data");
    try {
      var user = FirebaseAuth.instance.currentUser;
      print(FirebaseAuth.instance.currentUser);
      getMeResp.value = Profile(
        fullName: user!.displayName,
        email: user.email,
        address: Get.find<PrefUtils>().initAndGetAddress(),
        photoUrl: user.photoURL,
      );
      print(getMeResp.value.fullName);
      _handleFetchMeSuccess();
    } on Profile catch (e) {
      getMeResp.value = e;
      rethrow;
    }
  }

  void _handleFetchMeSuccess() {
    print("handleFetchMeSuccess");
    emailOneController.text = getMeResp.value.email!.toString();
    fullnameOneController.text = getMeResp.value.fullName!.toString();
    photoController.text = getMeResp.value.photoUrl!.toString();
    addressOneController.text = Get.find<PrefUtils>().initAndGetAddress();
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {
    Fluttertoast.showToast(
      msg: "Error fetching profile data",
    );
  }

  Future<void> saveChanges() async {
    print('saveChanges');
    try {
      print(FirebaseAuth.instance.currentUser);
      FirebaseAuth.instance.setLanguageCode(Get.locale?.toString() ?? "en");
      await FirebaseAuth.instance.currentUser!.updateEmail(emailOneController.text);
      await FirebaseAuth.instance.currentUser!.updateDisplayName(fullnameOneController.text);
      Get.find<PrefUtils>().saveAddress(addressOneController.text);
      _updateProfile();
    } catch (e) {
      Get.snackbar("Error", "Updating profile data");
      return;
    }

    Get.snackbar("Success", "Profile updated successfully");
    // Get.toNamed(AppRoutes.profilePage);
    // Get.toNamed(AppRoutes.homeContainerScreen);
  }

  void _updateProfile() {
    print("_updateProfile");
    getMeResp.value.fullName = fullnameOneController.text;
    getMeResp.value.email = emailOneController.text;
    getMeResp.value.address = addressOneController.text;
    getMeResp.value.photoUrl = photoController.text;
    print(getMeResp.value.fullName);
    print(getMeResp.value.email);
    print(getMeResp.value.address);
    print(getMeResp.value.photoUrl);
  }
}
