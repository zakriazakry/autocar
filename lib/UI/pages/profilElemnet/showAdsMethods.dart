// ignore_for_file: file_names

import 'package:autocars/UI/pages/add&editAds/add_ads_%20spareparts.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_boat.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_car.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_moto.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_truck.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_wheel.dart';
import 'package:autocars/consts/colors.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

class Showadsmethods extends StatefulWidget {
  const Showadsmethods({super.key});

  @override
  State<Showadsmethods> createState() => _ShowadsmethodsState();
}

class _ShowadsmethodsState extends State<Showadsmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  Text(
                    IsAR() ? ar['37'] : en['37'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                IsAR() ? ar['38'] : en['38'],
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 40,
              ),
              /////////////////////////////////////
              Expanded(
                  child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsCar(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['21'] : en['21'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/car.png',
                            color: isDark ? color5 : color1,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsTruck(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['25'] : en['25'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/truck.png',
                            width: 50,
                            color: isDark ? color5 : color1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsTMoto(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['24'] : en['24'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/motorcycle.png',
                            width: 50,
                            color: isDark ? color5 : color1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsWheel(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['23'] : en['23'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/wheel.png',
                            color: isDark ? color5 : color1,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsSpareparts(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['22'] : en['22'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/repair-tool.png',
                            color: isDark ? color5 : color1,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(PageAnimationTransition(
                          page: const AddAdsboat(),
                          pageAnimationType: RightToLeftFadedTransition()));
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 70,
                      width: MediaQuery.of(context).size.width * 0.4,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(IsAR() ? ar['26'] : en['26'],
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset(
                            'assets/icons_elemnets/boat.png',
                            color: isDark ? color5 : color1,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
