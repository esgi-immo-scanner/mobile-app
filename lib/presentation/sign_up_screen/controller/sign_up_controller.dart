import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/domain/googleauth/google_auth_helper.dart';
import 'package:immo_scanner/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:immo_scanner/data/models/register/post_register_resp.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  Future<void> callCreateRegister(String emailAddress, String password) async {
    try {
      await isNetworkConnected();
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      _handleCreateRegisterSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        postRegisterResp.message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        postRegisterResp.message = 'The account already exists for that email.';
      }
    } catch (e) {
      postRegisterResp.message = "Critical error occured";
      Logger.log(e.toString());
    }
  }

  Future<void> callGoogleSignIn() async {
    await GoogleAuthHelper().googleSignInProcess();
    _handleCreateRegisterSuccess();
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setId(FirebaseAuth.instance.currentUser!.uid);
  }
}
