import 'package:flutter/material.dart';
import 'package:ana_app/presentation/components/circular_slider_box/circular_viewer.dart';

class CircleSlider extends StatelessWidget {
  CircleSlider({
    required this.value,
    required this.sliderColor,
    this.text,
    super.key,
  });

  final double value;
  final Color sliderColor;
  String? text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: CircularViewer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              offset: Offset(-5, -5),
              color: Colors.white,
              blurRadius: 10,
              spreadRadius: 0.5,
            ),
            BoxShadow(
              offset: Offset(5, 5),
              color: Color.fromARGB(255, 158, 158, 158),
              blurRadius: 10,
              spreadRadius: 0.5,
            ),
          ],
        ),
        value: value,
        text: text,
        maxValue: 100,
        radius: 35,
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        color: const Color(0xffFFFFFF),
        sliderColor: sliderColor,
        unSelectedColor: const Color(0xffD7DEE7),
      ),
    );
  }
}
