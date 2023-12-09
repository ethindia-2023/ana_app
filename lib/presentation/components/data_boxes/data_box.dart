import 'package:ana_app/presentation/components/data_boxes/data_box_model.dart';
import 'package:flutter/material.dart';

class DataBox extends StatelessWidget {
  const DataBox({
    required this.data,
    super.key,
  });

  final DataBoxModel data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 120,
      child: Column(
        children: [
          const SizedBox(height: 20),
          SizedBox(
            height: 40,
            width: 40,
            child: Image.asset(data.assetPath),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 20,
            child: Text(
              data.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
            child: Text(
              data.value.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
            child: Text(
              '${data.change} %',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
