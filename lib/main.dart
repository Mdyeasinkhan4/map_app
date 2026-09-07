import 'package:flutter/material.dart';
import 'map_screen.dart';

void main() {
  runApp(const RealTimeMapApp());
}

class RealTimeMapApp extends StatelessWidget {
  const RealTimeMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real-Time Map Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MapScreen(),
    );
  }
}
