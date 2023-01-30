import 'package:get/get.dart';
import 'menuslider_item_model.dart';
import 'package:ajitkumar_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listlaptop_four_item_model.dart';
import 'listlaptop_seven_item_model.dart';

class EduviOnlineShopOneModel {
  RxList<MenusliderItemModel> menusliderItemList =
      RxList.filled(3, MenusliderItemModel());

  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListlaptopFourItemModel> listlaptopFourItemList =
      RxList.filled(3, ListlaptopFourItemModel());

  RxList<ListlaptopSevenItemModel> listlaptopSevenItemList =
      RxList.filled(3, ListlaptopSevenItemModel());
}
