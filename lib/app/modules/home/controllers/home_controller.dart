import 'package:get/get.dart';
import 'package:portaria_ideal/app/data/visitante_model.dart';
// import 'package:portaria_ideal/app/data/visitante_model.dart';

class HomeController extends GetxController {
  final VisitanteModel visitantes = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  // void addVisitante() => visitantes.add(());
}
