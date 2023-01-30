import '../models/chipviewtwo_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChipviewtwoItemWidget extends StatelessWidget {
  ChipviewtwoItemWidget(this.chipviewtwoItemModelObj);

  ChipviewtwoItemModel chipviewtwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: getPadding(
          right: 5,
          bottom: 5,
        ),
        child: ChoiceChip(
          label: Text(
            chipviewtwoItemModelObj.twoTxt.value,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: ColorConstant.black900,
              fontSize: getFontSize(
                14,
              ),
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          selected: chipviewtwoItemModelObj.isSelected.value,
          backgroundColor: ColorConstant.whiteA700,
          selectedColor: ColorConstant.whiteA700,
          shape: chipviewtwoItemModelObj.isSelected.value
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.black90099,
                    width: getHorizontalSize(
                      1.00,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                ),
          onSelected: (value) {
            chipviewtwoItemModelObj.isSelected.value = value;
          },
        ),
      ),
    );
  }
}
