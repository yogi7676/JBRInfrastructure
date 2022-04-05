import 'package:flutter/material.dart';
import 'package:jbr_infrastructure/app/utils/widgets/space.dart';

import '../../../../helpers/app_constants.dart';
import '../../../widgets/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  final Function() ontap;
  final IconData icon;
  final String text;
  const CustomTextButton(
      {Key? key, required this.ontap, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontap,
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(AppConstants.backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(color: AppConstants.lightGrey),
              borderRadius: BorderRadius.circular(5)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppConstants.blue,
            size: 15,
          ),
          const Space(),
          CustomText(
            text: text,
            size: 13,
          )
        ],
      ),
    );
  }
}
