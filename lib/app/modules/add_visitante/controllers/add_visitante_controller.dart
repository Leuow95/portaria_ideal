import 'package:get/get.dart';
import 'package:portaria_ideal/app/data/visitante_model.dart';

class AddVisitanteController extends GetxController {
  final visitantes = [].obs;
  // final _visitantes = List<VisitanteModel>;

  void addVisitante(String nome, String veiculo, String destino) {
    visitantes.add(VisitanteModel(
      name: nome,
      veiculo: veiculo,
      destino: destino,
    ));
    print(visitantes[0].name);
    Get.offAllNamed('/home');
  }

  @override
  void onInit() {
    super.onInit();
    // addVisitante(nome, veiculo, destino);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
