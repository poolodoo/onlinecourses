import '../controller/mentors_controller.dart';
import 'package:get/get.dart';

class MentorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MentorsController());
  }
}
