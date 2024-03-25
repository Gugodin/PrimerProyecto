// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:primerproyecto/ui/common/custom_network_image/custom_network_image.dart';

import '../../../../domain/domain.dart';

@RoutePage()
class CatDescriptionView extends StatelessWidget {
  final CatDataModel cat;
  const CatDescriptionView({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  margin: const EdgeInsets.all(10),
                  clipBehavior: Clip.hardEdge,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: CustomNetworkImage(
                      boxFit: BoxFit.fitHeight,
                      imageUrl: cat.imageDescription.imageURL))),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
              )),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
              )),
        ],
      ),
    );
  }
}
