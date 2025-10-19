import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home2/bindings/home2_binding.dart';
import '../modules/home2/views/home2_view.dart';
import '../modules/home3/bindings/home3_binding.dart';
import '../modules/home3/views/home3_view.dart';
import '../modules/sum/bindings/sum_binding.dart';
import '../modules/sum/views/sum_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.HOME2,
      page: () => Home2View(),
      binding: Home2Binding(),
    ),
    GetPage(
      name: _Paths.HOME3,
      page: () => Home3View(),
      binding: Home3Binding(),
    ),
    GetPage(
      name: _Paths.SUM,
      page: () => const SumView(),
      binding: SumBinding(),
    ),
  ];
}
