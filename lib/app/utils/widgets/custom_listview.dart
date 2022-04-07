import 'package:flutter/material.dart';

class CustomListview extends StatelessWidget {
  final bool? shrinkWrap, reverse;
  final Axis? scrollDirection;
  final ScrollPhysics? physics;
  final List<Widget> children;
  final EdgeInsets? padding;
  const CustomListview(
      {Key? key,
      this.shrinkWrap,
      this.reverse,
      this.scrollDirection,
      this.physics,
      required this.children,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap ?? false,
      physics: physics ?? const BouncingScrollPhysics(),
      scrollDirection: scrollDirection ?? Axis.vertical,
      reverse: reverse ?? false,
      padding: padding ?? const EdgeInsets.only(left: 20),
      children: children,
    );
  }
}
