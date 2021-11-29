import 'package:get/get.dart';

import 'package:portaria_ideal/app/modules/add_visitante/bindings/add_visitante_binding.dart';
import 'package:portaria_ideal/app/modules/add_visitante/views/add_visitante_view.dart';
import 'package:portaria_ideal/app/modules/home/bindings/home_binding.dart';
import 'package:portaria_ideal/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_VISITANTE,
      page: () => AddVisitanteView(),
      binding: AddVisitanteBinding(),
    ),
  ];
}
