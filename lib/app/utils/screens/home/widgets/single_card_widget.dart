import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:jbr_infrastructure/app/models/productmodel.dart';

import '../../../widgets/custom_image.dart';
import '../../../widgets/space.dart';
import './custom_detail_widget.dart';

class SingleCardWidget extends StatelessWidget {
  final bool forSale;
  final ProductModel productModel;
  const SingleCardWidget(
      {Key? key, required this.forSale, required this.productModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 180,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImage(
                    imageUrl: productModel.displayImage!,
                    height: 220,
                    borderRadius: BorderRadius.circular(15),
                    width: 180),
                Column(
                  children: [
                    FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        onPressed: () {},
                        child: const Icon(
                          IconlyLight.heart,
                          color: Colors.white,
                        )),
                    FloatingActionButton(
                        mini: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        onPressed: () {},
                        child: const Icon(
                          IconlyLight.location,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
            const Space(
              height: 20,
            ),
            CustomDetailWidget(
              forSale: forSale,
              productModel: productModel,
            )
          ],
        ),
      ),
    );
  }
}
