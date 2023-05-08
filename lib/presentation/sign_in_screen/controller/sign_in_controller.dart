import 'package:firebase_auth/firebase_auth.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/models/login/post_login_resp.dart';
import 'package:immo_scanner/domain/googleauth/google_auth_helper.dart';
import 'package:immo_scanner/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = false.obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onClose() {
    super.onClose();
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

  Future<void> callCreateLogin(String emailAddress, String password) async {
    try {
      await isNetworkConnected();
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      _handleCreateLoginSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        postLoginResp.message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        postLoginResp.message = 'The account already exists for that email.';
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> callGoogleSignIn() async {
    await GoogleAuthHelper().googleSignInProcess();
    _handleCreateLoginSuccess();
  }

  void _handleCreateLoginSuccess() async {
    Get.find<PrefUtils>().setToken(
        (await FirebaseAuth.instance.currentUser!.getIdToken()).toString());
  }
}
