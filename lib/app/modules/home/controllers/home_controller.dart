import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final box = GetStorage();

  void saveValue1(int value) {
    box.write('value1', value);
  }

  int? get value1 => box.read('value1');
}
