import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/add_new_property_decsription_screen/models/add_new_property_decsription_model.dart';
import 'package:flutter/material.dart';

class AddNewPropertyDecsriptionController extends GetxController {
  TextEditingController descriptionOneController = TextEditingController();

  Rx<AddNewPropertyDecsriptionModel> addNewPropertyDecsriptionModelObj =
      AddNewPropertyDecsriptionModel().obs;

  @override
  void onClose() {
    super.onClose();
    descriptionOneController.dispose();
  }
}
