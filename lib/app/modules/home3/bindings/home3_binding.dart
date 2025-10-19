import 'package:get/get.dart';

import '../controllers/home3_controller.dart';

class Home3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Home3Controller>(
      () => Home3Controller(),
    );
  }
}
