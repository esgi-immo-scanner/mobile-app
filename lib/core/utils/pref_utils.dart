import 'package:immo_scanner/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  RxString address = "".obs;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void logoutClear() async {
    _sharedPreferences!.remove("token");
    _sharedPreferences!.remove("id");
  }

  Future<void> saveAddress(String value){
    address.value = value;
    return _sharedPreferences!.setString("address", value);
  }

  String initAndGetAddress() {
    try {
      address.value = _sharedPreferences!.getString("address") ?? '';
      return address.value;
    } catch (e) {
      return '';
    }
  }

  Future<void> setToken(String value) {
    return _sharedPreferences!.setString('token', value);
  }

  String getToken() {
    try {
      return _sharedPreferences!.getString('token') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setId(String value) {
    return _sharedPreferences!.setString('id', value);
  }

  String getId() {
    try {
      return _sharedPreferences!.getString('id') ?? '';
    } catch (e) {
      return '';
    }
  }
}
