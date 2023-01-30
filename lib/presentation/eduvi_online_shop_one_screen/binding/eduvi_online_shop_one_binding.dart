import '../controller/eduvi_online_shop_one_controller.dart';
import 'package:get/get.dart';

class EduviOnlineShopOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EduviOnlineShopOneController());
  }
}
