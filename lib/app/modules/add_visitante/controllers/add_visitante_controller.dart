import 'package:get/get.dart';
import 'package:portaria_ideal/app/data/visitante_model.dart';

class AddVisitanteController extends GetxController {
  final List<VisitanteModel> visitantes = Get.find();
  // final _visitantes = List<VisitanteModel>;

  void addVisitante(String nome, String veiculo, String destino) {
    visitantes.add(VisitanteModel(
      name: nome,
      veiculo: veiculo,
      destino: destino,
    ));
    Get.offAllNamed('/visitantes');
  }

  @override
  void onInit() {
    super.onInit();
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

class VisitController extends GetxController {
  VisitController(VisitanteModel);

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
