import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function() onPressed;
  final Widget icon;
  final Color? splashColor;
  const CustomIconButton(
      {Key? key, required this.onPressed, required this.icon, this.splashColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      splashColor: splashColor ?? Colors.white,
    );
  }
}
