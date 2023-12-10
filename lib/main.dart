import 'package:ana_app/presentation/analytics/analytics.dart';
import 'package:ana_app/presentation/components/bar_graph/bar_graph.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Analytics(),
    );
  }
}
