import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_visitante_controller.dart';

class AddVisitanteView extends GetView<AddVisitanteController> {
  final nomeController = TextEditingController();
  final veiculoController = TextEditingController();
  final destinoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: TextFormField(
                controller: nomeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  labelText: 'Nome do Visitante',
                  hintText: 'Digite o nome do visitante',
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(height: 20),
            Container(
              child: TextFormField(
                controller: veiculoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  labelText: 'Veículo do visitante',
                  hintText: 'Digite o veículo do visitante',
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(height: 20),
            Container(
              child: TextFormField(
                controller: destinoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  labelText: 'Destino do visitante',
                  hintText: 'Digite o bloco e apartamento destino',
                ),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                child: Text('Adicionar', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  controller.addVisitante(
                    nomeController.text,
                    veiculoController.text,
                    destinoController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
