import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../../../helpers/images.dart';
import '../../../widgets/custom_iconbutton.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_listview.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/space.dart';
import './custom_detail_widget.dart';

class CardWidget extends StatelessWidget {
  final bool forSale;
  final String title;
  const CardWidget({Key? key, required this.forSale, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          size: 16,
          weight: FontWeight.bold,
        ),
        const Space(
          height: 20,
        ),
        SizedBox(
          height: 330,
          width: MediaQuery.of(context).size.width - 40,
          child: CustomListview(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(AppImages.pg.length, (index) {
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
                                imageUrl: AppImages.pg[index],
                                height: 220,
                                borderRadius: BorderRadius.circular(15),
                                width: 180),
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
                        CustomDetailWidget(forSale: forSale)
                      ],
                    ),
                  ),
                );
              })),
        ),
        const Space(),
      ],
    );
  }
}
