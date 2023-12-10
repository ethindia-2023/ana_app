import 'package:ana_app/presentation/components/bar_graph/bar_graph.dart';
import 'package:ana_app/presentation/components/data_boxes/data_box_model.dart';
import 'package:ana_app/presentation/components/data_boxes/data_box_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Analytics extends StatelessWidget {
  Analytics({super.key});

  final List<DataBoxModel> data = [
    DataBoxModel(
      title: 'Data 1',
      value: 1252,
      change: 13,
      assetPath: Icons.people_alt_outlined,
      color: Colors.lightBlue,
    ),
    DataBoxModel(
      title: 'Data 2',
      value: 822,
      change: 27,
      assetPath: Icons.notes_sharp,
      color: Colors.lightGreen,
    ),
    DataBoxModel(
      title: 'Data 3',
      value: 1919,
      change: -11,
      assetPath: Icons.electrical_services_outlined,
      color: Colors.purple,
    ),
    DataBoxModel(
      title: 'Data 4',
      value: 6513,
      change: 2,
      assetPath: Icons.lock_clock_outlined,
      color: Colors.orange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transactions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, bottom: 10),
                child: BarGraph(),
              ),
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 220,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 180,
                      width: 180,
                      child: SvgPicture.asset('assets/images/pi_graph.svg'),
                    ),
                    const Column(
                      children: [
                        PieChartBox(title: 'Gas', bigNo: '8085', cent: '13%'),
                        PieChartBox(title: 'NFT', bigNo: '3145', cent: '25%'),
                        PieChartBox(title: 'Other', bigNo: '5122', cent: '-2%'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quick Stats',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                child: DataBoxRow(data: data),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PieChartBox extends StatelessWidget {
  const PieChartBox({
    required this.title,
    required this.bigNo,
    required this.cent,
    super.key,
  });

  final String title, bigNo, cent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            width: 75,
            height: 47,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF5A5881),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 26,
                  child: Text(
                    bigNo,
                    style: const TextStyle(
                      color: Color(0xFF15134B),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 31,
                  child: Text(
                    cent,
                    style: const TextStyle(
                      color: Color(0xFF5A5881),
                      fontSize: 13,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
