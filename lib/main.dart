import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trip_planner/controllers/viajeProvider.dart';
import 'package:trip_planner/pages/Landing.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => viajeProvider()),
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: LandingPage()),
      ),
    );
  }
}
