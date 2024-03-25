// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit? boxFit;
  final double? width, height;
  const CustomNetworkImage(
      {super.key,
      required this.imageUrl,
      this.boxFit,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: boxFit,
      progressIndicatorBuilder: (context, url, downloadProgress) => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LinearProgressIndicator(value: downloadProgress.progress),
        ],
      ),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
