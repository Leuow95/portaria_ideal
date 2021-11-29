import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:portaria_ideal/app/data/visitante_model.dart';
import 'package:portaria_ideal/app/modules/add_visitante/controllers/add_visitante_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final AddVisitanteController visitanteController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portaria Ideal'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: visitanteController.visitantes[index].veiculo == 'Carro'
                ? Icon(Icons.directions_car)
                : Icon(Icons.motorcycle),
            title: Text(visitanteController.visitantes[index].name),
            subtitle: Text(visitanteController.visitantes[index].destino),
          );
        },
        itemCount: visitanteController.visitantes.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/add_visitante');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
