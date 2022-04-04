import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_appbar.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_iconbutton.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_text.dart';
import 'package:jbr_infrastructure/app/utils/widgets/space.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingWidget: Container(),
        title: '',
        actions: [
          CustomIconButton(
              onPressed: () {},
              icon: Icon(
                Feather.bell,
                color: AppConstants.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 150,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppConstants.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Discover',
                          color: AppConstants.white,
                          size: 20,
                          weight: FontWeight.bold,
                        ),
                        const Space(),
                        CustomText(
                          text: 'Find your future place',
                          color: AppConstants.white,
                        )
                      ],
                    ),
                  ],
                ),
                Material(
                  color: AppConstants.white,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
