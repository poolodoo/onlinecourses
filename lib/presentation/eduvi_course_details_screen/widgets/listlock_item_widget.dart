import '../controller/eduvi_course_details_controller.dart';
import '../models/listlock_item_model.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlockItemWidget extends StatelessWidget {
  ListlockItemWidget(this.listlockItemModelObj);

  ListlockItemModel listlockItemModelObj;

  var controller = Get.find<EduviCourseDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 10,
      ),
      decoration: AppDecoration.fillWhiteA70087.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        children: [
          Container(
            height: getVerticalSize(
              50.00,
            ),
            width: getHorizontalSize(
              80.00,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage50x80,
                  height: getVerticalSize(
                    50.00,
                  ),
                  width: getHorizontalSize(
                    80.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      5.00,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.whiteA700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Container(
                      height: getSize(
                        18.00,
                      ),
                      width: getSize(
                        18.00,
                      ),
                      padding: getPadding(
                        all: 4,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLock10x10,
                            height: getSize(
                              10.00,
                            ),
                            width: getSize(
                              10.00,
                            ),
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 4,
              right: 36,
              bottom: 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "msg_maths_introdu".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterSemiBold16Gray900.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_1_57".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterMedium14Deeporange400.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
