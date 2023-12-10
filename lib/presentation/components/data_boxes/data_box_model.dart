import 'package:flutter/material.dart';

class DataBoxModel {
  final String title;
  final double value;
  final int change;
  final IconData assetPath;
  final Color color;

  DataBoxModel({
    required this.title,
    required this.value,
    required this.change,
    required this.assetPath,
    required this.color
  });
}
