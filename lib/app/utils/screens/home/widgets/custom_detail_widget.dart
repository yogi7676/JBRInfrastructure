import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../helpers/app_constants.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/space.dart';

class CustomDetailWidget extends StatelessWidget {
  final bool forSale;
  const CustomDetailWidget({Key? key, required this.forSale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: forSale
              ? MainAxisAlignment.start
              : MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontSize: 15,
                      color: AppConstants.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: forSale ? 'Price : ' : AppConstants.rupee),
                    TextSpan(
                        text: '${(forSale) ? AppConstants.rupee : ''} 80000'),
                    !forSale
                        ? TextSpan(
                            text: ' /mth',
                            style: TextStyle(
                                fontSize: 12,
                                color: AppConstants.lightGrey,
                                fontWeight: FontWeight.normal),
                          )
                        : const TextSpan(text: '')
                  ]),
            ),
            if (!forSale)
              CustomText(
                text: AppConstants.rupee + ' 90000',
                textDecoration: TextDecoration.lineThrough,
                weight: FontWeight.w600,
                color: AppConstants.grey,
                size: 13,
              ),
          ],
        ),
        const Space(),
        const CustomText(
            overflow: TextOverflow.ellipsis,
            size: 12,
            text: '#11/3,8th cross, C.K nagar, hosa road, bangalore -560100'),
        const Space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  forSale ? FontAwesome.building : FontAwesome.home,
                  color: AppConstants.grey,
                  size: 15,
                ),
                const Space(),
                CustomText(
                  text: '3 Floors',
                  weight: FontWeight.w600,
                  color: AppConstants.grey,
                  size: 12,
                )
              ],
            ),
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
            ),
          ],
        )
      ],
    );
  }
}
