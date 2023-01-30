import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/become_an_instructor_screen/models/become_an_instructor_model.dart';
import 'package:flutter/material.dart';

class BecomeAnInstructorController extends GetxController {
  TextEditingController buttonController = TextEditingController();

  Rx<BecomeAnInstructorModel> becomeAnInstructorModelObj =
      BecomeAnInstructorModel().obs;

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
