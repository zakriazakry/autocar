import 'package:autocars/UI/pages/info_product/_boats/details_Boats.dart';
import 'package:autocars/UI/pages/info_product/_car/details_car.dart';
import 'package:autocars/UI/pages/info_product/_moto/details_moto.dart';
import 'package:autocars/UI/pages/info_product/_parts/details_parts.dart';
import 'package:autocars/UI/pages/info_product/_wheel/details_wheel.dart';
import 'package:autocars/consts/colors.dart';
import 'package:autocars/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../pages/info_product/_trucks/details_trucks.dart';

// ignore: must_be_immutable
class ProductCard extends StatefulWidget {
  int index;
  bool isfavorit;
  String category;
  ProductCard({
    super.key,
    required this.index,
    required this.isfavorit,
    required this.category,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(widget.category);
        switch (widget.category) {
          case 'Cars':
          case 'السيارات':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducCars(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          case 'Spare Parts':
          case 'قطع غيار':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducparts(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          case 'Tires':
          case 'الإطارات':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducwheel(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          case 'Motorcycles':
          case 'دراجات نارية':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducmotos(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          case 'Trucks':
          case 'الشاحنات':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducTrucks(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          case 'Boats':
          case 'القوارب':
            Navigator.of(context).push(PageAnimationTransition(
                page: DetailsProducBoats(
                  index: widget.index,
                ),
                pageAnimationType: RightToLeftFadedTransition()));
            break;
          default:
            if (kDebugMode) {
              print("erorr");
            }
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        height: 150,
        decoration: BoxDecoration(
            color: isDark ? color1 : color5,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(width: 0.3)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text("داو كالوس كبوط",
                    style: TextStyle(
                      color: isDark ? color5 : color1,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Text("الزاوية | Daewoo",
                    style: TextStyle(
                        color: isDark ? color5 : color1,
                        fontWeight: FontWeight.w300,
                        fontSize: 16)),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  textDirection: TextDirection.rtl,
                  "3 د.ل",
                  style: TextStyle(
                      color: color3, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            // image start-----------
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.network(
                    "https://jadefansite.com/images/b749e4kalos1_2g.jpg",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircleAvatar(
                        radius: 20,
                        backgroundColor: color5,
                        child: IconButton(
                            onPressed: () {},
                            icon: widget.isfavorit
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  )
                                : const Icon(
                                    Icons.star_border,
                                    color: color1,
                                  ))),
                  )
                ],
              ),
            )
            // image end-------------
          ],
        ),
      ),
    );
  }
}
