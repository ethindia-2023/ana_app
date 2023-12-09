import 'package:ana_app/presentation/components/data_boxes/data_box.dart';
import 'package:ana_app/presentation/components/data_boxes/data_box_model.dart';
import 'package:flutter/material.dart';

class DataBoxRow extends StatelessWidget {
  const DataBoxRow({
    required this.data,
    super.key,
  });

  final List<DataBoxModel> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) => DataBox(data: data[index]),
    );
  }
}
