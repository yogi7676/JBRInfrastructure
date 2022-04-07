import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jbr_infrastructure/app/helpers/app_constants.dart';
import 'package:jbr_infrastructure/app/utils/screens/home/widgets/single_card_widget.dart';

import 'package:jbr_infrastructure/app/utils/widgets/space.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../models/productmodel.dart';
import '../../../widgets/custom_listview.dart';
import '../../../widgets/custom_text.dart';

class CardWidget extends StatelessWidget {
  final bool forSale;
  final String title;
  final Stream<QuerySnapshot> stream;
  const CardWidget(
      {Key? key,
      required this.forSale,
      required this.title,
      required this.stream})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: stream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Shimmer.fromColors(
              baseColor: AppConstants.backgroundColor,
              highlightColor: AppConstants.white.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 10,
                          width: 100,
                          color: AppConstants.backgroundColor,
                        ),
                        Container(
                          height: 10,
                          width: 60,
                          color: AppConstants.backgroundColor,
                        ),
                      ],
                    ),
                  ),
                  const Space(),
                  Container(
                    height: 260,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppConstants.backgroundColor,
                    ),
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(10),
                  ),
                ],
              ),
            );
          }

          if (snapshot.hasData) {
            return snapshot.data!.docs.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: title,
                              size: 16,
                              weight: FontWeight.bold,
                            ),
                            TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(
                                        AppConstants.backgroundColor)),
                                child: CustomText(
                                  text: 'view all',
                                  color: AppConstants.lightGrey,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 330,
                        width: MediaQuery.of(context).size.width - 40,
                        child: CustomListview(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                snapshot.data!.size > 7
                                    ? 10
                                    : snapshot.data!.size, (index) {
                              ProductModel model = ProductModel.fromJson(
                                  snapshot.data!.docs[index]);
                              return SingleCardWidget(
                                productModel: model,
                                forSale: forSale,
                              );
                            })),
                      ),
                      const Space(),
                    ],
                  )
                : Container();
          }

          return Container();
        });
  }
}
