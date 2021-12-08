import 'package:flutter/material.dart';

import 'package:portaria_ideal/app/pages/home/views/home_view.dart';

import 'pages/add_visitante/add_visitante_view.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portaria Ideal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
      routes: {
        '/home': (context) => HomeView(),
        '/add_visitante': (context) => AddVisitanteView(),
      },
    );
  }
}
