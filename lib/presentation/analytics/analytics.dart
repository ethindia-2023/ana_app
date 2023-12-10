import 'package:ana_app/presentation/components/bar_graph/bar_graph.dart';
import 'package:ana_app/presentation/components/data_boxes/data_box_model.dart';
import 'package:ana_app/presentation/components/data_boxes/data_box_row.dart';
import 'package:ana_app/presentation/projects/projects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Analytics extends StatelessWidget {
  Analytics({
    required this.project,
    super.key,
  });

  final bool project;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Projects()));
            },
          ),
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Test Project',
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: const [
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Transactions',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: BarGraph(data: project ? barData : altBarData),
              ),
              const SizedBox(
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
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
                        PieChartBox(
                            title: 'Income', bigNo: '7455', cent: '13%'),
                        PieChartBox(
                            title: 'Expenses', bigNo: '5122', cent: '25%'),
                        PieChartBox(title: 'Other', bigNo: '2802', cent: '-2%'),
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160,
                child: DataBoxRow(data: project ? data : altData),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<DataBoxModel> data = [
    DataBoxModel(
      title: 'Data 1',
      value: 142,
      change: -5,
      assetPath: Icons.people_alt_outlined,
      color: Colors.lightBlue,
    ),
    DataBoxModel(
      title: 'Data 2',
      value: 822,
      change: 12,
      assetPath: Icons.notes_sharp,
      color: Colors.lightGreen,
    ),
    DataBoxModel(
      title: 'Data 3',
      value: 919,
      change: -22,
      assetPath: Icons.electrical_services_outlined,
      color: Colors.purple,
    ),
    DataBoxModel(
      title: 'Data 4',
      value: 653,
      change: 152,
      assetPath: Icons.lock_clock_outlined,
      color: Colors.orange,
    ),
  ];

  final List<DataBoxModel> altData = [
    DataBoxModel(
      title: 'DEF',
      value: 22,
      change: 27,
      assetPath: Icons.notes_sharp,
      color: Colors.lightGreen,
    ),
    DataBoxModel(
      title: 'GHI',
      value: 119,
      change: -11,
      assetPath: Icons.electrical_services_outlined,
      color: Colors.purple,
    ),
    DataBoxModel(
      title: 'JKL',
      value: 513,
      change: 32,
      assetPath: Icons.lock_clock_outlined,
      color: Colors.orange,
    ),
    DataBoxModel(
      title: 'ABC',
      value: 1252,
      change: 13,
      assetPath: Icons.people_alt_outlined,
      color: Colors.lightBlue,
    ),
    DataBoxModel(
      title: 'MNO',
      value: 822,
      change: 27,
      assetPath: Icons.notes_sharp,
      color: Colors.red,
    ),
    DataBoxModel(
      title: 'PQR',
      value: 19,
      change: -89,
      assetPath: Icons.electrical_services_outlined,
      color: Colors.purple,
    ),
    DataBoxModel(
      title: 'STY',
      value: 323,
      change: 2,
      assetPath: Icons.lock_clock_outlined,
      color: Colors.orange,
    ),
  ];

  final barData = <double>[
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
    6,
    7,
    5,
    11,
    5,
    3,
    0,
    1,
    2,
    7,
    7,
    4,
    6,
    7,
    5,
    11,
    5,
    3
  ];

  final altBarData = <double>[
    9,
    7,
    6,
    11,
    5,
    8,
    4,
    4,
    4,
    7,
    2,
    2,
    6,
    1,
    3,
    10,
    9,
    7,
    4
  ];
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
