import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/eduvi_course_details_screen/models/eduvi_course_details_model.dart';
import 'package:flutter/material.dart';

class EduviCourseDetailsController extends GetxController {
  TextEditingController buttonController = TextEditingController();

  Rx<EduviCourseDetailsModel> eduviCourseDetailsModelObj =
      EduviCourseDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    buttonController.dispose();
  }
}
