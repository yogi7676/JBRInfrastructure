import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/helpers/images.dart';
import 'package:jbr_infrastructure/app/utils/screens/home/widgets/house_details.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_carousel_slider.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_iconbutton.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_listview.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_navigation.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_text.dart';
import 'package:jbr_infrastructure/app/utils/widgets/space.dart';

import '../../widgets/custom_image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: AppConstants.appName,
          weight: FontWeight.bold,
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: AppConstants.white,
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
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.only(top: 20) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // search container
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: AppConstants.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                        const Image(
                          image: AssetImage(AppImages.house),
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Material(
                    color: AppConstants.white,
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(15)),
                    child: Row(
                      children: [
                        Flexible(
                            child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'what are you looking for?',
                              hintStyle:
                                  TextStyle(color: AppConstants.lightGrey),
                              prefixIcon: Icon(
                                Feather.search,
                                color: AppConstants.lightGrey,
                              ),
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesome.sliders,
                                    color: AppConstants.lightGrey,
                                  ))),
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Space(
            height: 40,
          ),

          // best offers
          const CustomText(
            text: 'Best Offers',
            size: 16,
            weight: FontWeight.bold,
          ),
          const Space(
            height: 20,
          ),
          CustomCarouselSlider(
              height: 150,
              viewFraction: 0.8,
              items: List.generate(
                  5,
                  (index) => CustomImage(
                      imageUrl: AppImages.url,
                      borderRadius: BorderRadius.circular(10),
                      height: 150,
                      width: MediaQuery.of(context).size.width))),
          const Space(
            height: 20,
          ),

          // Residential Rental Properties
          const CustomText(
            text: 'Residential Rental Properties',
            size: 16,
            weight: FontWeight.bold,
          ),
          const Space(
            height: 20,
          ),
          SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
            child: CustomListview(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () => pushToStack(context, const HouseDetails()),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      width: 320,
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImage(
                                  imageUrl: AppImages.url,
                                  height: 200,
                                  borderRadius: BorderRadius.circular(15),
                                  width: 300),
                              CustomIconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    FontAwesome.heart_o,
                                    color: Colors.grey,
                                  )),
                            ],
                          ),
                          const Space(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              Flexible(
                                child: CustomText(
                                    overflow: TextOverflow.ellipsis,
                                    text:
                                        '#11/3,8th cross, chennakeshava nagar, hosa road, bangalore -560100'),
                              ),
                              Space(),
                              CustomText(
                                text: AppConstants.rupee + ' 8000 / month',
                                weight: FontWeight.bold,
                                size: 16,
                              )
                            ],
                          ),
                          const Space(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        FontAwesome.home,
                                        color: AppConstants.grey,
                                        size: 15,
                                      ),
                                      const Space(),
                                      CustomText(
                                        text: '3 BHK',
                                        weight: FontWeight.w600,
                                        color: AppConstants.grey,
                                        size: 12,
                                      )
                                    ],
                                  ),
                                  const Space(),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.crop_square,
                                        color: AppConstants.grey,
                                        size: 15,
                                      ),
                                      const Space(
                                        width: 5,
                                      ),
                                      CustomText(
                                        text: '1200 sqft',
                                        color: AppConstants.grey,
                                        weight: FontWeight.w600,
                                        size: 13,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              CustomText(
                                text: AppConstants.rupee + ' 9000',
                                textDecoration: TextDecoration.lineThrough,
                                weight: FontWeight.w600,
                                color: AppConstants.grey,
                                size: 13,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                })),
          ),

          // Residential Properties for sale
          const CustomText(
            text: 'Residential Properties',
            size: 16,
            weight: FontWeight.bold,
          ),
          const Space(
            height: 20,
          ),

          // Pg hostels
          const CustomText(
            text: 'PG Hostels',
            size: 16,
            weight: FontWeight.bold,
          ),
          const Space(
            height: 20,
          ),

          // Residential Properties for sale
          const CustomText(
            text: 'Commercial Properties',
            size: 16,
            weight: FontWeight.bold,
          ),
          const Space(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
