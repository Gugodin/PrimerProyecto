// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:primerproyecto/ui/common/common.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ImagePart(cat: cat),
            Expanded(
                flex: 1,
                child: Column(
                  children: [NameAndOriginPart(cat: cat), LevelPart(cat: cat)],
                )),
            DescriptionPart(cat: cat)
          ],
        ),
      ),
    );
  }
}

class DescriptionPart extends StatelessWidget {
  final CatDataModel cat;
  const DescriptionPart({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              const Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ))),
              Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Text(
                      cat.attributes.description,
                      style: const TextStyle(fontSize: 17),
                    ),
                  )),
            ],
          ),
        ));
  }
}

class ImagePart extends StatelessWidget {
  final CatDataModel cat;
  const ImagePart({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: CustomNetworkImage(
                boxFit: BoxFit.fitHeight,
                imageUrl: cat.imageDescription.imageURL)));
  }
}

class NameAndOriginPart extends StatelessWidget {
  final CatDataModel cat;

  const NameAndOriginPart({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: FittedBox(
                    child: Text(
                  cat.attributes.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ))),
            Expanded(
                flex: 1,
                child: Text(
                  'Origin: ${cat.attributes.origin}',
                  style: TextStyle(fontWeight: FontWeight.w300),
                )),
          ],
        ));
  }
}

class LevelPart extends StatelessWidget {
  final CatDataModel cat;
  const LevelPart({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: CustomLevelShower(
                  currentLevel: cat.attributes.intelligence,
                  titleLevel: 'Intelligence',
                )),
            Expanded(
                flex: 1,
                child: CustomLevelShower(
                  currentLevel: cat.attributes.dogFriendly,
                  titleLevel: 'Dog Friendly',
                )),
          ],
        ));
  }
}
