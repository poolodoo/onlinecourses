import '../controller/eduvi_online_shop_one_controller.dart';
import '../models/menuslider_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenusliderItemWidget extends StatelessWidget {
  MenusliderItemWidget(this.menusliderItemModelObj);

  MenusliderItemModel menusliderItemModelObj;

  var controller = Get.find<EduviOnlineShopOneController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: CustomButton(
          height: 40,
          width: 102,
          text: "lbl_all_books".tr,
          margin: getMargin(
            right: 20,
          ),
          variant: ButtonVariant.FillOrange200,
          fontStyle: ButtonFontStyle.InterMedium14WhiteA700,
        ),
      ),
    );
  }
}
