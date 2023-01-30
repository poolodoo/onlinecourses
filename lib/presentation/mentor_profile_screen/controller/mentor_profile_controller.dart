import 'package:ajitkumar_s_application5/core/app_export.dart';
import 'package:ajitkumar_s_application5/presentation/mentor_profile_screen/models/mentor_profile_model.dart';
import 'package:flutter/material.dart';

class MentorProfileController extends GetxController {
  TextEditingController buttonController = TextEditingController();

  Rx<MentorProfileModel> mentorProfileModelObj = MentorProfileModel().obs;

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
