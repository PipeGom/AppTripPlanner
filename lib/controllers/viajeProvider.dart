import 'package:flutter/material.dart';
import 'package:trip_planner/models/viaje.dart';

class viajeProvider extends ChangeNotifier {
  List<Viaje> _viajes = [];

  List<Viaje> get viajes => _viajes;

  void addViaje(Viaje viaje) {
    _viajes.add(viaje);
    notifyListeners();
  }
}
