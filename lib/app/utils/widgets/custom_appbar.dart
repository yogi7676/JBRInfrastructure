import 'package:flutter/material.dart';

import '../../helpers/app_constants.dart';
import './custom_text.dart';
import './custom_navigation.dart';
import './custom_iconbutton.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leadingWidget;
  final bool? centerTitle;
  const CustomAppBar(
      {Key? key,
      required this.title,
      this.actions,
      this.leadingWidget,
      this.centerTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstants.white,
      elevation: 0,
      centerTitle: centerTitle ?? true,
      actions: actions ?? [],
      title: CustomText(
        text: title,
        size: 15,
        color: AppConstants.black,
        weight: FontWeight.bold,
      ),
      leading: leadingWidget ??
          CustomIconButton(
              onPressed: () => popFromStack(context),
              icon: Icon(
                Icons.navigate_before,
                color: AppConstants.black,
              )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
