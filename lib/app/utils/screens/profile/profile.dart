import 'package:flutter/material.dart';

import '../../../helpers/app_constants.dart';
import '../../../helpers/controllers.dart';
import '../../../helpers/images.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/space.dart';
import './widgets/profile_single_item.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.09),
      body: SafeArea(
          child: ListView(
        children: [
          // profile image view
          Material(
            color: AppConstants.white,
            child: Column(
              children: [
                const Space(
                  height: 20,
                ),
                const Center(
                    child: CustomText(
                  text: 'Account',
                  weight: FontWeight.bold,
                )),
                const Space(
                  height: 30,
                ),
                Row(
                  children: [
                    const Space(
                      width: 15,
                    ),
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          image: const DecorationImage(
                              image: AssetImage(AppImages.house),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const Space(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Samantha',
                          size: 20,
                          weight: FontWeight.bold,
                          color: AppConstants.black.withOpacity(0.6),
                        ),
                        const Space(
                          height: 5,
                        ),
                        CustomText(
                          text: 'Smith',
                          weight: FontWeight.bold,
                          color: AppConstants.black.withOpacity(0.6),
                          size: 20,
                        ),
                        const Space(
                          height: 5,
                        ),
                        CustomText(
                          text: '+1 987 654 3210',
                          color: AppConstants.grey,
                        )
                      ],
                    )
                  ],
                ),
                const Space(
                  height: 15,
                )
              ],
            ),
          ),
          GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(15),
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 1.8,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            children:
                List.generate(profileController.profileTabs.length, (index) {
              return ProfileSingleItem(
                profileModel: profileController.profileTabs[index],
                isLogout: index == profileController.profileTabs.length - 1
                    ? true
                    : false,
              );
            }),
          ),
        ],
      )),
    );
  }
}
