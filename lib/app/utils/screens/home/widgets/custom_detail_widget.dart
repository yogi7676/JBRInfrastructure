import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:jbr_infrastructure/app/models/productmodel.dart';

import '../../../../helpers/app_constants.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/space.dart';

class CustomDetailWidget extends StatelessWidget {
  final bool forSale;
  final ProductModel productModel;
  const CustomDetailWidget(
      {Key? key, required this.forSale, required this.productModel})
      : super(key: key);

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
                        text:
                            '${(forSale) ? AppConstants.rupee : ''} ${productModel.offerPrice}'),
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
                text: AppConstants.rupee +
                    ' ' +
                    productModel.originalPrice!.toString(),
                textDecoration: TextDecoration.lineThrough,
                weight: FontWeight.w600,
                color: AppConstants.grey,
                size: 13,
              ),
          ],
        ),
        const Space(),
        CustomText(
            overflow: TextOverflow.ellipsis,
            size: 12,
            text: productModel.address!),
        const Space(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  forSale ? FontAwesome5Regular.building : IconlyLight.home,
                  color: AppConstants.grey,
                  size: 15,
                ),
                const Space(),
                CustomText(
                  text: (productModel.floors == 0
                      ? 'Ground'
                      : '${productModel.floors} Floors'),
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
                  text: productModel.sqft.toString() + ' sqft',
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
