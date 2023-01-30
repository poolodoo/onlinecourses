import '../controller/eduvi_online_shop_controller.dart';
import 'package:get/get.dart';

class EduviOnlineShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EduviOnlineShopController());
  }
}
