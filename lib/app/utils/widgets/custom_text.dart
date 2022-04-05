import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? letterspacing, height;
  final TextDecoration? textDecoration;
  const CustomText(
      {Key? key,
      required this.text,
      this.size,
      this.color,
      this.weight,
      this.overflow,
      this.textAlign,
      this.letterspacing,
      this.textDecoration,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: size ?? 15,
          height: height ?? 1.2,
          color: color ?? Colors.black,
          letterSpacing: letterspacing ?? 0,
          decoration: textDecoration ?? TextDecoration.none,
          overflow: overflow ?? TextOverflow.ellipsis,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}
