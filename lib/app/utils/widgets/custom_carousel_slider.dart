import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  final double? height, viewFraction;
  final List<Widget> items;
  const CustomCarouselSlider(
      {Key? key, this.height, required this.items, this.viewFraction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: items,
        options: CarouselOptions(
            height: height ?? 200,
            initialPage: 0,
            viewportFraction: viewFraction ?? 1,
            autoPlay: true,
            autoPlayInterval: const Duration(milliseconds: 1500),
            enlargeCenterPage: true));
  }
}
