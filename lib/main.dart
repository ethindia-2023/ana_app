import 'package:ana_app/presentation/components/circular_slider_box/circular_slider_box.dart';
import 'package:ana_app/presentation/components/line_graph/line_graph.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: CircularSliderBox(
          actualValue: 78,
          expectedValue: 121,
          color: Colors.deepPurple,
          title: 'DEFS',
        ),
      ),
    );
  }
}
