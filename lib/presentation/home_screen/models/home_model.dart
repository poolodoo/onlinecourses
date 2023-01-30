import 'package:get/get.dart';
import 'package:ajitkumar_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';
import 'chipviewtwo_item_model.dart';
import 'home_item_model.dart';

class HomeModel {
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

  RxList<ChipviewtwoItemModel> chipviewtwoItemList =
      RxList.generate(3, (index) => ChipviewtwoItemModel());

  RxList<HomeItemModel> homeItemList = RxList.filled(8, HomeItemModel());
}
