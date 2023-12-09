import 'package:ana_app/presentation/components/circular_slider_box/circle_slider.dart';
import 'package:flutter/material.dart';

class CircularSliderBox extends StatelessWidget {
  CircularSliderBox({
    required this.actualValue,
    required this.expectedValue,
    required this.color,
    this.title,
    super.key,
  });

  final double actualValue;
  final double expectedValue;
  final Color color;
  String? title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Text(
                      actualValue.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              CircleSlider(
                value: (actualValue / expectedValue * 100),
                sliderColor: color,
                text: title!,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Text(
                      expectedValue.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    child: Text(
                      'Expected',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
