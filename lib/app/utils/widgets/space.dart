import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double? height;
  final double? width;
  const Space({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 10,
      width: width ?? 10,
    );
  }
}
