import '../controller/pricing_controller.dart';
import 'package:get/get.dart';

class PricingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PricingController());
  }
}
