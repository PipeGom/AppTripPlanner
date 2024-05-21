import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_planner/controllers/viajeProvider.dart';
import 'package:trip_planner/pages/PageCreateTrip.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Planner'),
      ),
      body: Consumer<viajeProvider>(builder: (_, viajesProvider, child) {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: viajesProvider.viajes.length,
                itemBuilder: (context, index) {
                  final viaje = viajesProvider.viajes[index];
                  return ListTile(
                    title: Text(viaje.destino),
                    subtitle: Text(viaje.fecha),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ViajeForm(),
                  ),
                );
              },
              child: Text('Add Trip'),
            ),
          ],
        );
      }),
    );
  }
}
