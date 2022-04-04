import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void pushToStack(BuildContext context, Widget newScreen) {
  pushNewScreen(context, screen: newScreen);
}

void popFromStack(BuildContext context) {
  Navigator.pop(context);
}

void nextPage(Widget newPage) {
  Get.to(() => newPage);
}

void previousPage() {
  Get.back();
}

void replacePage(Widget page) {
  Get.offAll(page);
}
