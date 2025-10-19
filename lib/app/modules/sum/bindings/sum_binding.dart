import 'package:get/get.dart';

import '../controllers/sum_controller.dart';

class SumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SumController>(
      () => SumController(),
    );
  }
}
