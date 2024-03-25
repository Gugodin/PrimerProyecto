// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:primerproyecto/ui/common/custom_line/custom_line.dart';
import 'package:primerproyecto/ui/common/custom_network_image/custom_network_image.dart';

class CustomCard extends StatelessWidget {
  final TypeCustomCard typeCard;
  double? height;
  double? width;
  final EdgeInsets margin;
  EdgeInsets padding;
  final String? urlImage;
  final String title;
  final String subTitle;
  final Function()? onTap;

  CustomCard({
    super.key,
    required this.typeCard,
    this.height,
    this.width,
    this.margin = const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    this.padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    this.urlImage,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  void getDimensionCard(Size size, TypeCustomCard type) {
    if (type == TypeCustomCard.HORIZONTAL) {
      height ??= size.height * .10;
    } else {
      width ??= size.width * .45;
      height ??= size.height * .20;

      padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 5);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getDimensionCard(size, typeCard);
    return Container(
      margin: margin,
      height: height,
      width: width,
      child: Material(
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 10,
          child: InkWell(
            onTap: onTap,
            child: typeCard == TypeCustomCard.HORIZONTAL
                ? HorizontalContent(
                    urlImage: urlImage,
                    padding: padding,
                    title: title,
                    subTitle: subTitle)
                : VerticalContent(
                    padding: padding,
                    urlImage: urlImage,
                    title: title,
                    subTitle: subTitle),
          ),
        ),
      ),
    );
  }
}

class VerticalContent extends StatelessWidget {
  const VerticalContent({
    super.key,
    required this.padding,
    required this.urlImage,
    required this.title,
    required this.subTitle,
  });

  final EdgeInsets padding;
  final String? urlImage;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          margin: padding,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: CustomNetworkImage(
            boxFit: BoxFit.fitWidth,
            imageUrl: urlImage!,
          ),
        )),
        Expanded(
            child: Padding(
          padding: padding,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      // const Expanded(
                      //     child: CustomLine(typeLine: TypeLine.HORIZONTAL))
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      subTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )),
            ],
          ),
        )),
      ],
    );
  }
}

class HorizontalContent extends StatelessWidget {
  const HorizontalContent({
    super.key,
    required this.urlImage,
    required this.padding,
    required this.title,
    required this.subTitle,
  });

  final String? urlImage;
  final EdgeInsets padding;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        urlImage != null
            ? Expanded(
                flex: 1,
                child: Container(
                  padding: padding,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: CustomNetworkImage(
                      boxFit: BoxFit.fitWidth,
                      imageUrl: urlImage!,
                    ),
                  ),
                ))
            : const SizedBox(),
        Expanded(
            flex: 2,
            child: Container(
              padding: padding,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          subTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )),
                ],
              ),
            )),
      ],
    );
  }
}

enum TypeCustomCard { HORIZONTAL, VERTICAL }
