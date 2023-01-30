import '../controller/eduvi_course_details_controller.dart';
import 'package:get/get.dart';

class EduviCourseDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EduviCourseDetailsController());
  }
}
