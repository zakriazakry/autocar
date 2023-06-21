// ignore_for_file: must_be_immutable

import 'package:autocars/UI/pages/info_product/details_car.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class ProductCard extends StatefulWidget {
  int index;
  bool isfavorit;
  ProductCard({super.key, required this.index, required this.isfavorit});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageAnimationTransition(
            page: DetailsProduct(
              index: widget.index,
            ),
            pageAnimationType: RightToLeftFadedTransition()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 3),
        height: 150,
        decoration: BoxDecoration(
            color: color5,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(width: 0.3)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Column(
              children: [
                Text("داو كالوس كبوط",
                    style: TextStyle(
                      color: color1,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 40,
                ),
                Text("الزاوية | Daewoo",
                    style: TextStyle(
                        color: color1,
                        fontWeight: FontWeight.w300,
                        fontSize: 16)),
                SizedBox(
                  height: 5,
                ),
                Text(
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
                                : const Icon(Icons.star_border))),
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
