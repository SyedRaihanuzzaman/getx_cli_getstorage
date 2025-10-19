import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Home2Controller extends GetxController {
  final box = GetStorage();

  void saveValue2(int value) {
    box.write('value2', value);
  }

  int? get value2 => box.read('value2');
}
