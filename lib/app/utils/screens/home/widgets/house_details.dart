import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/helpers/images.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_carousel_slider.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_listview.dart';
import './custom_text_button.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_appbar.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_image.dart';
import 'package:jbr_infrastructure/app/utils/widgets/space.dart';

import '../../../widgets/custom_text.dart';
import '../../../../helpers/string_extensions.dart';

class HouseDetails extends StatelessWidget {
  const HouseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.white,
      appBar: const CustomAppBar(title: 'Details'),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.only(top: 15) +
                const EdgeInsets.symmetric(horizontal: 15),
            children: [
              // image carousel
              CustomCarouselSlider(
                  items: List.generate(
                      5,
                      (index) => CustomImage(
                          imageUrl: AppImages.url,
                          borderRadius: BorderRadius.circular(10),
                          height: 200,
                          width: MediaQuery.of(context).size.width))),
              const Space(
                height: 20,
              ),
              // address text
              CustomText(
                  overflow: TextOverflow.clip,
                  weight: FontWeight.bold,
                  size: 16,
                  height: 1.5,
                  text:
                      '#11/3,8th cross, chennakeshava nagar, hosa road, bangalore -560100'
                          .capitalizeWords),
              const Space(
                height: 15,
              ),
              // house details
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        FontAwesome.home,
                        color: AppConstants.grey,
                        size: 20,
                      ),
                      const Space(),
                      CustomText(
                        text: '3 BHK',
                        weight: FontWeight.w600,
                        color: AppConstants.grey,
                      )
                    ],
                  ),
                  const Space(),
                  Row(
                    children: [
                      Icon(
                        Icons.crop_square,
                        color: AppConstants.grey,
                        size: 20,
                      ),
                      const Space(
                        width: 5,
                      ),
                      CustomText(
                        text: '1200 sqft',
                        color: AppConstants.grey,
                        weight: FontWeight.w600,
                      )
                    ],
                  )
                ],
              ),
              const Space(
                height: 20,
              ),
              Divider(
                color: AppConstants.lightGrey,
              ),
              const Space(
                height: 15,
              ),
              // owner info
              Row(
                children: [
                  CustomText(
                    text: 'Owned by',
                    weight: FontWeight.w600,
                    color: AppConstants.grey,
                  ),
                  const Space(),
                  CircleAvatar(
                    radius: 15,
                    child: ClipOval(
                        child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CachedNetworkImage(
                              imageUrl: AppImages.url,
                              fit: BoxFit.fill,
                            ))),
                  ),
                  const Space(),
                  const CustomText(
                    text: 'Emma Watson',
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              const Space(
                height: 15,
              ),
              // buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomTextButton(
                        ontap: () {},
                        icon: Icons.location_on_outlined,
                        text: 'Maps'),
                  ),
                  const Space(),
                  Expanded(
                      flex: 1,
                      child: CustomTextButton(
                          ontap: () {}, icon: Icons.phone, text: 'Call')),
                  const Space(),
                  Expanded(
                    flex: 1,
                    child: CustomTextButton(
                        ontap: () {},
                        icon: FontAwesome5Regular.comment_dots,
                        text: 'Message'),
                  ),
                ],
              ),
              const Space(
                height: 20,
              ),
              Divider(
                color: AppConstants.lightGrey,
              ),
              const Space(
                height: 15,
              ),
              // description
              const CustomText(
                text: 'Description',
                weight: FontWeight.bold,
              ),
              const Space(
                height: 20,
              ),
              const CustomText(
                overflow: TextOverflow.clip,
                text:
                    'Enim sint ut incididunt culpa consequat eu in ea consectetur in nostrud laborum reprehenderit. Occaecat consequat deserunt cillum sunt duis voluptate amet sunt et proident duis occaecat do elit. Reprehenderit magna labore minim amet dolor cupidatat veniam magna amet quis ea ex. In eiusmod consectetur officia dolore in excepteur ea ex irure aliquip irure occaecat anim. Sint enim ut aute occaecat aute velit aliqua fugiat duis consectetur laboris adipisicing tempor. Consequat magna laborum adipisicing ullamco sint cillum occaecat aliquip.',
              ),
              const Space(
                height: 15,
              ),
              Divider(
                color: AppConstants.lightGrey,
              ),
              const Space(
                height: 15,
              ),
              // reviews
              const CustomText(
                text: 'Reviews',
                weight: FontWeight.bold,
              ),
              const Space(
                height: 20,
              ),
              CustomListview(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(15, (index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // review user info
                              CircleAvatar(
                                radius: 20,
                                child: ClipOval(
                                    child: SizedBox(
                                        height: 40,
                                        width: 40,
                                        child: CachedNetworkImage(
                                          imageUrl: AppImages.url,
                                          fit: BoxFit.fill,
                                        ))),
                              ),
                              const Space(),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const CustomText(text: 'Emma Wattson'),
                                    // rating bar
                                    Column(
                                      children: [
                                        RatingBarIndicator(
                                            rating: 5,
                                            itemCount: 5,
                                            itemSize: 15,
                                            direction: Axis.horizontal,
                                            itemBuilder: ((context, index) =>
                                                Icon(
                                                  Icons.star,
                                                  color: AppConstants.gold,
                                                ))),
                                        const Space(
                                          height: 5,
                                        ),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: CustomText(
                                              text: '20 dec 2021',
                                              size: 12,
                                              color: AppConstants.lightGrey,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Space(
                            height: 20,
                          ),
                          const CustomText(
                              overflow: TextOverflow.clip,
                              text:
                                  'Ad culpa officia duis consequat est aliqua elit deserunt culpa officia minim. Sit consequat deserunt Lorem veniam officia cillum minim velit incididunt. Sint excepteur esse ipsum occaecat adipisicing veniam quis Lorem velit.')
                        ],
                      ),
                    );
                  }))
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                    color: AppConstants.white,
                    boxShadow: [
                      BoxShadow(
                          color: AppConstants.backgroundColor,
                          spreadRadius: 1,
                          blurRadius: 2)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Monthly Rent',
                          color: AppConstants.lightGrey,
                        ),
                        const Space(
                          height: 5,
                        ),
                        const CustomText(
                          text: AppConstants.rupee + ' 800',
                          size: 22,
                          weight: FontWeight.bold,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                              backgroundColor:
                                  MaterialStateProperty.all(AppConstants.blue)),
                          onPressed: () {},
                          child: CustomText(
                            text: 'Start Offer',
                            color: AppConstants.white,
                          )),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
