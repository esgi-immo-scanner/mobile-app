import 'package:get/get.dart';
import 'listimg_item_model.dart';
import 'lessMoreCounter_item_model.dart';
import 'package:immo_scanner/data/models/selectionPopupModel/selection_popup_model.dart';
import 'chipviewhome_item_model.dart';
import 'options2_item_model.dart';

class FilterModel {
  RxList<ListimgItemModel> listimgItemList =
      RxList.generate(2, (index) => ListimgItemModel());

  RxList<LessMoreItemModel> listMoreLessItemList =
      [
    LessMoreItemModel(
      "Nombre chambres",
      "2",
      "chambres"),
    LessMoreItemModel(
      "Nombre pieces",
      "2",
      "pieces"),
      ].obs;

  RxList<SelectionPopupModel> dropdownItemListDPEMin = [
    SelectionPopupModel(
      id: 1,
      title: "A",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemListDPEMax = [
    SelectionPopupModel(
      id: 1,
      title: "A",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemGESMin = [
    SelectionPopupModel(
      id: 1,
      title: "A",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemGESMax =[
    SelectionPopupModel(
      id: 1,
      title: "A",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "B",
    ),
    SelectionPopupModel(
      id: 3,
      title: "C",
    ),
    SelectionPopupModel(
      id: 4,
      title: "D",
    ),
    SelectionPopupModel(
      id: 5,
      title: "E",
    ),
    SelectionPopupModel(
      id: 6,
      title: "F",
    ),
  ].obs;

  RxList<ChipviewhomeItemModel> chipviewhomeItemList =
      RxList.generate(5, (index) => ChipviewhomeItemModel());

  RxList<Options2ItemModel> options2ItemList =
      RxList.generate(8, (index) => Options2ItemModel());

}
