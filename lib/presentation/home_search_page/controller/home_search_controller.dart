import 'package:immo_scanner/core/app_export.dart';import 'package:immo_scanner/presentation/home_search_page/models/home_search_model.dart';import 'package:flutter/material.dart';class HomeSearchController extends GetxController {HomeSearchController(this.homeSearchModelObj);

TextEditingController searchController = TextEditingController();

Rx<HomeSearchModel> homeSearchModelObj;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
