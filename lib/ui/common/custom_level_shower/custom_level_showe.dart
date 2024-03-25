// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomLevelShower extends StatelessWidget {
  final int maxLevel;
  final int currentLevel;
  Color? color;
  final String titleLevel;

  CustomLevelShower({
    super.key,
    this.maxLevel = 5,
    required this.currentLevel,
    this.color,
    required this.titleLevel,
  });

  getContainers(context) {
    List<Widget> listLevels = [];

    color ??= Theme.of(context).primaryColor;

    bool shouldPaint = true;

    for (var i = 0; i < maxLevel; i++) {
      if (currentLevel == 0) {
        shouldPaint = false;
      }
      if (i > currentLevel - 1) {
        shouldPaint = false;
      }

      if (i == 0) {
        listLevels.add(LevelContainer(
          shouldPaint: shouldPaint,
          color: color!,
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(5)),
        ));
      } else if (i == maxLevel - 1) {
        listLevels.add(LevelContainer(
          shouldPaint: shouldPaint,
          color: color!,
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(5)),
        ));
      } else {
        listLevels.add(LevelContainer(
          shouldPaint: shouldPaint,
          color: color!,
        ));
      }
    }
    return listLevels;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleLevel,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: getContainers(context),
          ),
        ],
      ),
    );
  }
}

class LevelContainer extends StatelessWidget {
  final Color color;
  final BorderRadiusGeometry? borderRadius;
  final bool shouldPaint;
  const LevelContainer({
    super.key,
    required this.color,
    this.borderRadius,
    required this.shouldPaint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          color: !shouldPaint ? Colors.grey.withOpacity(.8) : color,
          borderRadius: borderRadius),
      width: borderRadius != null ? 30 : 35,
      height: 15,
    );
  }
}
