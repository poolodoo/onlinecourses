import '../controller/become_an_instructor_controller.dart';
import 'package:get/get.dart';

class BecomeAnInstructorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BecomeAnInstructorController());
  }
}
