import 'controller/sign_up_controller.dart';
import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/widgets/custom_button.dart';
import 'package:ajitkumar_s_application5/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpDialog extends StatelessWidget {
  SignUpDialog(this.controller);

  SignUpController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: getPadding(left: 20, top: 35, right: 20, bottom: 35),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                  width: 295,
                  focusNode: FocusNode(),
                  controller: controller.googleController,
                  hintText: "msg_signup_with_goo".tr,
                  variant: TextFormFieldVariant.OutlineGray300,
                  padding: TextFormFieldPadding.PaddingT13,
                  fontStyle: TextFormFieldFontStyle.InterRegular16,
                  prefix: Container(
                      padding: getPadding(all: 8),
                      margin: getMargin(left: 5, top: 5, right: 15, bottom: 5),
                      decoration: BoxDecoration(
                          color: ColorConstant.red600,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(7.00))),
                      child: CustomImageView(svgPath: ImageConstant.imgGoogle)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(50.00))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(top: 26),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: getVerticalSize(1.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(top: 8, bottom: 10),
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray700)),
                            Padding(
                                padding: getPadding(left: 10),
                                child: Text("msg_or_signup_with".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular16.copyWith(
                                        height: getVerticalSize(1.55)))),
                            Container(
                                height: getVerticalSize(1.00),
                                width: getHorizontalSize(20.00),
                                margin: getMargin(left: 10, top: 8, bottom: 10),
                                decoration:
                                    BoxDecoration(color: ColorConstant.gray700))
                          ]))),
              Padding(
                  padding: getPadding(top: 28),
                  child: Text("lbl_full_name".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16
                          .copyWith(height: getVerticalSize(1.55)))),
              CustomTextFormField(
                  width: 295,
                  focusNode: FocusNode(),
                  controller: controller.group7608Controller,
                  hintText: "lbl_esther_howard".tr,
                  margin: getMargin(top: 9),
                  variant: TextFormFieldVariant.OutlineGray300,
                  padding: TextFormFieldPadding.PaddingT13,
                  fontStyle: TextFormFieldFontStyle.InterRegular16,
                  prefix: Container(
                      margin:
                          getMargin(left: 15, top: 16, right: 10, bottom: 16),
                      child: CustomImageView(svgPath: ImageConstant.imgUser)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(50.00))),
              Padding(
                  padding: getPadding(top: 20),
                  child: Text("lbl_email".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16
                          .copyWith(height: getVerticalSize(1.55)))),
              CustomTextFormField(
                  width: 295,
                  focusNode: FocusNode(),
                  controller: controller.emailOneController,
                  hintText: "msg_bill_sanders_ex".tr,
                  margin: getMargin(top: 9),
                  variant: TextFormFieldVariant.OutlineGray300,
                  padding: TextFormFieldPadding.PaddingT13,
                  fontStyle: TextFormFieldFontStyle.InterRegular16,
                  textInputType: TextInputType.emailAddress,
                  prefix: Container(
                      margin:
                          getMargin(left: 15, top: 16, right: 10, bottom: 16),
                      child: CustomImageView(
                          svgPath: ImageConstant.imgMessage24Outline)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(50.00))),
              Padding(
                  padding: getPadding(top: 20),
                  child: Text("lbl_passord".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium16
                          .copyWith(height: getVerticalSize(1.55)))),
              Obx(() => CustomTextFormField(
                  width: 295,
                  focusNode: FocusNode(),
                  controller: controller.passwordController,
                  hintText: "lbl3".tr,
                  margin: getMargin(top: 9),
                  variant: TextFormFieldVariant.OutlineGray300,
                  padding: TextFormFieldPadding.PaddingT20,
                  fontStyle: TextFormFieldFontStyle.InterRegular16,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  prefix: Container(
                      margin:
                          getMargin(left: 15, top: 16, right: 10, bottom: 16),
                      child: CustomImageView(svgPath: ImageConstant.imgLock)),
                  prefixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(50.00)),
                  suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                          margin: getMargin(
                              left: 30, top: 16, right: 14, bottom: 16),
                          child: CustomImageView(
                              svgPath: controller.isShowPassword.value
                                  ? ImageConstant.imgEye
                                  : ImageConstant.imgEye))),
                  suffixConstraints:
                      BoxConstraints(maxHeight: getVerticalSize(50.00)),
                  isObscureText: !controller.isShowPassword.value)),
              Padding(
                  padding: getPadding(top: 18),
                  child: Row(children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgCheckmark24x24,
                        height: getSize(24.00),
                        width: getSize(24.00)),
                    Padding(
                        padding: getPadding(left: 10, top: 4, bottom: 2),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_i_agreed_to_the".tr,
                                  style: TextStyle(
                                      color: ColorConstant.gray700,
                                      fontSize: getFontSize(14),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: getVerticalSize(1.77))),
                              TextSpan(
                                  text: "msg_terms_conditions".tr,
                                  style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(14),
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: getVerticalSize(1.77)))
                            ]),
                            textAlign: TextAlign.left))
                  ])),
              CustomButton(
                  height: 50,
                  width: 295,
                  text: "lbl_sign_up".tr,
                  margin: getMargin(top: 23),
                  fontStyle: ButtonFontStyle.InterMedium16),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(top: 21, bottom: 3),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_alreay_have_acc2".tr,
                                style: TextStyle(
                                    color: ColorConstant.gray700,
                                    fontSize: getFontSize(16),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: getVerticalSize(1.55))),
                            TextSpan(
                                text: "lbl_sign_in".tr,
                                style: TextStyle(
                                    color: ColorConstant.red300,
                                    fontSize: getFontSize(16),
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    height: getVerticalSize(1.55)))
                          ]),
                          textAlign: TextAlign.left)))
            ]));
  }
}
