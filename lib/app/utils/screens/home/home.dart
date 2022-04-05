import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/helpers/images.dart';
import 'package:jbr_infrastructure/app/utils/screens/home/widgets/card_widget.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_carousel_slider.dart';
import 'package:jbr_infrastructure/app/utils/widgets/custom_iconbutton.dart';
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
          const CardWidget(
              forSale: false, title: 'Residential Rental Properties'),

          //pg hostels
          const CardWidget(forSale: false, title: 'PG Hostels'),

          // Residential Properties for sale
          const CardWidget(forSale: true, title: 'Residential Properties'),

          // Commercial Properties for sale
          // Residential Properties for sale
          const CardWidget(forSale: true, title: 'Commercial Properties'),
        ]),
      ),
    );
  }
}
