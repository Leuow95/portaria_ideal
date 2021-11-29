import 'package:get/get.dart';
import 'package:portaria_ideal/app/modules/add_visitante/controllers/add_visitante_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AddVisitanteController>(
      () => AddVisitanteController(),
    );
  }
}
