import 'package:get/get.dart';

class Profile {
  String? fullName;

  String? email;

  String? address;

  String? photoUrl;

  Profile({fullName, email, address, photoUrl}){
    this.fullName = fullName ?? "";
    this.email = email ?? "";
    this.address = address ?? "";
    this.photoUrl = photoUrl ?? "";
  }

  // // Rx getters
  // String get getFullName => fullName.value;
  // String get getEmail => email.value;
  // String get getAddress => address.value;
  // String get getPhotoUrl => photoUrl.value;
}

// import 'package:get/get.dart';

// class Profile {
//   RxString fullName = "".obs;

//   RxString email =  "".obs;

//   RxString address =  "".obs;

//   RxString photoUrl =  "".obs;

//   Profile({fullName,email,address, photoUrl}){
//     this.fullName.value = fullName ?? "";
//     this.email.value = email ?? "";
//     this.address.value = address ?? "";
//     this.photoUrl.value = photoUrl ?? "";
//   }

//   // Rx getters
//   String get getFullName => fullName.value;
//   String get getEmail => email.value;
//   String get getAddress => address.value;
//   String get getPhotoUrl => photoUrl.value;
  
// }
