import 'package:autocars/UI/Widgets/drawer/drawer_widget.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_%20spareparts.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_boat.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_car.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_moto.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_truck.dart';
import 'package:autocars/UI/pages/add&editAds/add_ads_wheel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../../consts/colors.dart';
import '../../Widgets/cards/adsCard.dart';
import '../search/searchPage.dart';

class MyAds extends StatefulWidget {
  const MyAds({super.key});

  @override
  State<MyAds> createState() => _MyAdsState();
}

class _MyAdsState extends State<MyAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerPage(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: color5,
        ),
        backgroundColor: color3,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(PageAnimationTransition(
                  page: const SearchPage(),
                  pageAnimationType: RightToLeftFadedTransition()));
            },
            icon: const Icon(
              Icons.search,
              color: color5,
            )),
      ),
      floatingActionButton: SpeedDial(
        backgroundColor: color4,
        overlayColor: const Color.fromARGB(255, 0, 0, 0),
        icon: Icons.add,
        activeIcon: Icons.menu,
        children: [
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsTruck(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/truck.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsboat(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/boat.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsTMoto(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/motorcycle.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsWheel(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/wheel.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsSpareparts(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/repair-tool.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
          SpeedDialChild(
              elevation: 5,
              onTap: () {
                Navigator.of(context).push(PageAnimationTransition(
                    page: const AddAdsCar(),
                    pageAnimationType: RightToLeftFadedTransition()));
              },
              child: Image.asset(
                "assets/icons_elemnets/car.png",
                width: 30,
                fit: BoxFit.contain,
              ),
              backgroundColor: color5),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "الإعلانات",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AdsCard(
                    index: index,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
