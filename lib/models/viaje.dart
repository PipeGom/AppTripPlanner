import 'package:trip_planner/models/gasto.dart';

class Viaje {
  late double presupuesto;
  late String destino;
  late String fecha;
  late List<Gasto> gastos;

  Viaje.empty() {
    presupuesto = 0;
    destino = '';
    fecha = '';
    gastos = [];
  }
}
