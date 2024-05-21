import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_planner/controllers/viajeProvider.dart';

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
                // Add logic to navigate to the page where you can add new trips
              },
              child: Text('Add Trip'),
            ),
          ],
        );
      }),
    );
  }
}
