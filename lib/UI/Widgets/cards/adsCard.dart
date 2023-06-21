// ignore_for_file: file_names

import 'package:autocars/UI/pages/info_product/details_car_ads.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

// ignore: must_be_immutable
class AdsCard extends StatefulWidget {
  int index;
  AdsCard({
    super.key,
    required this.index,
  });

  @override
  State<AdsCard> createState() => _AdsCardState();
}

class _AdsCardState extends State<AdsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageAnimationTransition(
            page: DetailsProductADs(
              index: widget.index,
            ),
            pageAnimationType: RightToLeftFadedTransition()));
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: color5,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(width: 0.3)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Hero(
                  tag: 'title${widget.index.toString()}',
                  child: const Text("داو كالوس كبوط",
                      style: TextStyle(
                        color: color1,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text("الزاوية | Daewoo",
                    style: TextStyle(
                        color: color1,
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
              child: Hero(
                tag: 'image${widget.index}',
                child: Image.network(
                  "https://jadefansite.com/images/b749e4kalos1_2g.jpg",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
            // image end-------------
          ],
        ),
      ),
    );
  }
}
