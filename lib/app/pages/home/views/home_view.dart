import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portaria Ideal'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.directions_car),
            title: Text("Nome do Visitante"),
            subtitle: Text("Bloco que ele vai"),
          );
        },
        itemCount: 3,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add_visitante');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
