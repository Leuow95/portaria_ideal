// import 'package:flutter/material.dart';
// import 'package:portaria_ideal/app/home/views/home_view.dart';

abstract class Routes {
  Routes._();

  static const HOME = _Paths.HOME;
  static const ADD_VISITANTE = _Paths.ADD_VISITANTE;
}

abstract class _Paths {
  static const HOME = '/home';
  static const ADD_VISITANTE = '/add_visitante';
}
