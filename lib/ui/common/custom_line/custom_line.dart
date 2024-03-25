// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class CustomLine extends StatelessWidget {
  final TypeLine typeLine;
  final double thickness;
  final EdgeInsets margin;
  final Color? color;
  const CustomLine({
    super.key,
    required this.typeLine,
    this.thickness = 2,
    this.margin = const EdgeInsets.all(5),
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return typeLine == TypeLine.HORIZONTAL
        ? Container(
            margin: margin,
            width: double.infinity,
            height: thickness,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
          )
        : Container(
            margin: margin,
            width: thickness,
            height: double.infinity,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
          );
  }
}

enum TypeLine { HORIZONTAL, VERTICAL }
