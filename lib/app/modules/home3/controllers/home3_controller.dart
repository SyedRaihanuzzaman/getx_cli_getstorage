import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Home3Controller extends GetxController {
  final box = GetStorage();

  void saveValue3(int value) {
    box.write('value3', value);
  }

  int? get value3 => box.read('value3');
}
