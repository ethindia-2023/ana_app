import 'package:ana_app/presentation/components/data_boxes/data_box_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DataBox extends StatelessWidget {
  const DataBox({
    required this.data,
    super.key,
  });

  final DataBoxModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: 160,
        width: 120,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 1,
              offset: Offset(5, -20),
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                data.assetPath,
                color: data.color,
                fill: 0.100,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 20,
              child: Text(
                data.title,
                style: const TextStyle(
                  color: Color(0xFF5A5881),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 30,
              child: Text(
                data.value.toString(),
                style: const TextStyle(
                  color: Color(0xFF15134B),
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Text(
                '${data.change} %',
                style: const TextStyle(
                  color: Color(0xFF5A5881),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
