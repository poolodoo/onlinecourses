import '../controller/eduvi_course_details_controller.dart';
import '../models/listthethreemusketeers1_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listthethreemusketeers1ItemWidget extends StatelessWidget {
  Listthethreemusketeers1ItemWidget(this.listthethreemusketeers1ItemModelObj);

  Listthethreemusketeers1ItemModel listthethreemusketeers1ItemModelObj;

  var controller = Get.find<EduviCourseDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          all: 15,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage240x230,
              height: getVerticalSize(
                87.00,
              ),
              width: getHorizontalSize(
                76.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  5.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 15,
                bottom: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_the_three_muske".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterSemiBold16Gray900.copyWith(
                      height: getVerticalSize(
                        1.03,
                      ),
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgLaptop,
                    height: getVerticalSize(
                      14.00,
                    ),
                    width: getHorizontalSize(
                      83.00,
                    ),
                    margin: getMargin(
                      top: 7,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "lbl_39_00".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterSemiBold16Red300.copyWith(
                        height: getVerticalSize(
                          1.03,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: getMargin(
                left: 5,
                top: 53,
              ),
              color: ColorConstant.red300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                height: getSize(
                  34.00,
                ),
                width: getSize(
                  34.00,
                ),
                padding: getPadding(
                  all: 7,
                ),
                decoration: AppDecoration.fillRed300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLock20x20,
                      height: getSize(
                        20.00,
                      ),
                      width: getSize(
                        20.00,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
