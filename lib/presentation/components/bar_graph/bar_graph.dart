import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class LineGraph extends StatelessWidget {
  const LineGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfSparkLineChart(
        data: const <double>[
          1,
          5,
          6,
          0,
          1,
          2,
          7,
          7,
          4,
          10,
          13,
          6,
          7,
          5,
          11,
          5,
          3,
          1,
          5,
          6,
          0,
          1,
          2,
          7,
          7,
          4,
          10,
          13,
          6,
          7,
          5,
          11,
          5,
          3
        ],
      ),
    );
  }
}

class BarGraph extends StatelessWidget {
  const BarGraph({
    required this.data,
    super.key,
  });

  final List<double> data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color.fromARGB(1, 169, 59, 255),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              color: Color.fromARGB(1, 249, 249, 249),
            ),
          ],
        ),
        child: SfSparkBarChart(
          // highPointColor: Colors.black,
          color: Colors.purple,
          axisLineWidth: 2,
          data: data,
        ),
      ),
    );
  }
}
