import 'package:get/get.dart';

import '../controllers/add_visitante_controller.dart';

class AddVisitanteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddVisitanteController>(
      () => AddVisitanteController(),
    );
  }
}
