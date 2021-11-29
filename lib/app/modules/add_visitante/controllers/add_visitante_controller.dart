import 'package:get/get.dart';
import 'package:portaria_ideal/app/data/visitante_model.dart';

class AddVisitanteController extends GetxController {
  final List<VisitanteModel> visitantes = Get.find();

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
  void addVisitante(String nome, String veiculo, String destino) {
    visitantes.add(VisitanteModel(
      name: nome,
      veiculo: veiculo,
      destino: destino,
    ));
    print(visitantes.toString());
    Get.offAllNamed('/visitantes');
  }
}
