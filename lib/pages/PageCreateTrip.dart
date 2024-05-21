import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_planner/controllers/viajeProvider.dart';
import 'package:trip_planner/models/viaje.dart';

class ViajeForm extends StatefulWidget {
  @override
  _ViajeFormState createState() => _ViajeFormState();
}

class _ViajeFormState extends State<ViajeForm> {
  final _formKey = GlobalKey<FormState>();
  final _viaje = Viaje.empty();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Agregar Viaje'),
        ),
        body: Consumer<viajeProvider>(builder: (_, viajesProvider, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Presupuesto'),
                    keyboardType: TextInputType.number,
                    onSaved: (value) {
                      _viaje.presupuesto = double.parse(value!);
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Destino'),
                    onSaved: (value) {
                      _viaje.destino = value!;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Fecha'),
                    onSaved: (value) {
                      _viaje.fecha = value!;
                    },
                  ),
                  ElevatedButton(
                    child: Text('Agregar Viaje'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        viajesProvider.addViaje(_viaje);
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
