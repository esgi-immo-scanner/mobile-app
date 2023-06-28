import 'package:flutter/material.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/data/models/me/get_me_resp.dart';

class ProfileModel { 
    RxString fullName = "".obs;

    RxString email =  "".obs;

    RxString address =  "".obs;

    RxString photoUrl =  "".obs;

    // Constructor
    ProfileModel({
        required this.fullName,
        required this.email,
        required this.address,
        required this.photoUrl,
    });

    // Rx Getters
    String get getFullName => fullName.value;
    String get getEmail => email.value;
    String get getAddress => address.value;
    String get getPhotoUrl => photoUrl.value;
}
