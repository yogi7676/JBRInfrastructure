import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imageUrl;
  final BorderRadius? borderRadius;
  final double height, width;
  final BoxFit? fit;
  const CustomImage(
      {Key? key,
      required this.imageUrl,
      this.borderRadius,
      required this.height,
      required this.width,
      this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        height: height,
        width: width,
        fit: fit ?? BoxFit.fill,
      ),
    );
  }
}
