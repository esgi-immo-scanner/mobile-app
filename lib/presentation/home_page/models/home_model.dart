import 'package:get/get.dart';
import 'home_item_model.dart';
import 'package:immo_scanner/data/models/selectionPopupModel/selection_popup_model.dart';

class HomeModel {
  // RxList<HomeItemModel> homeItemList =
  // RxList.generate(2, (index) => HomeItemModel());
  RxInt count = 0.obs;

  // RxList<SelectionPopupModel> dropdownItemList = [
  //   SelectionPopupModel(
  //     id: 1,
  //     title: "Item One",
  //     isSelected: true,
  //   ),
  //   SelectionPopupModel(
  //     id: 2,
  //     title: "Item Two",
  //   ),
  //   SelectionPopupModel(
  //     id: 3,
  //     title: "Item Three",
  //   )
  // ].obs;
}
