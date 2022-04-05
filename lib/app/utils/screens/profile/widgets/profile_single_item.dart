import 'package:flutter/material.dart';

import '../../../../helpers/app_constants.dart';
import '../../../../models/profilemodel.dart';
import '../../../widgets/custom_navigation.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/space.dart';

class ProfileSingleItem extends StatelessWidget {
  final ProfileModel profileModel;
  final bool isLogout;
  const ProfileSingleItem(
      {Key? key, required this.profileModel, required this.isLogout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLogout
          ? profileModel.destination
          : () => pushToStack(context, profileModel.destination),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: profileModel.title,
                weight: FontWeight.bold,
              ),
              const Space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: profileModel.description,
                    size: 11,
                    color: AppConstants.grey,
                  ),
                  Icon(
                    profileModel.icon,
                    size: 30,
                    color: AppConstants.grey.withOpacity(0.2),
                  )
                ],
              )
            ],
          )),
    );
  }
}
