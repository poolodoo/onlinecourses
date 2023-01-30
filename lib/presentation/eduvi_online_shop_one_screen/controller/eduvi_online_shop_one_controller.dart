import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_online_shop_one_screen/models/eduvi_online_shop_one_model.dart';
import 'package:flutter/material.dart';

class EduviOnlineShopOneController extends GetxController {
  TextEditingController classController = TextEditingController();

  TextEditingController buttonController = TextEditingController();

  Rx<EduviOnlineShopOneModel> eduviOnlineShopOneModelObj =
      EduviOnlineShopOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    classController.dispose();
    buttonController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    eduviOnlineShopOneModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    eduviOnlineShopOneModelObj.value.dropdownItemList.refresh();
  }
}
