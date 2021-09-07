import 'package:get/get.dart';

import 'package:choose_a_car/app/modules/base/bindings/base_binding.dart';
import 'package:choose_a_car/app/modules/base/views/base_view.dart';
import 'package:choose_a_car/app/modules/home/bindings/home_binding.dart';
import 'package:choose_a_car/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BASE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => BaseView(),
      binding: BaseBinding(),
    ),
  ];
}
