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

    // Rx Setters
    set setFullName(String fullName) => this.fullName.value = fullName;
    set setEmail(String email) => this.email.value = email;
    set setAddress(String address) => this.address.value = address;
    set setPhotoUrl(String photoUrl) => this.photoUrl.value = photoUrl;

}
