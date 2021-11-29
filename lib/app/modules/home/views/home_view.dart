import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:portaria_ideal/app/data/visitante_model.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portaria Ideal'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: controller.visitantes[index].veiculo == 'Carro'
                ? Icon(Icons.directions_car)
                : Icon(Icons.motorcycle),
            title: Text(controller.visitantes[index].name),
            subtitle: Text(controller.visitantes[index].destino),
          );
        },
        itemCount: controller.visitantes.length,
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
