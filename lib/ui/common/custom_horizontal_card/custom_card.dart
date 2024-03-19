// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomHorizontalCard extends StatelessWidget {
  final double height;
  final EdgeInsets margin;
  final EdgeInsets padding;
  const CustomHorizontalCard({
    super.key,
    this.height = 150,
    this.margin = const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 10,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: padding,
                  color: Colors.red,
                  child: Center(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: padding,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
