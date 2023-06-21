// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:autocars/UI/Widgets/cards/categoryCard.dart';
import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:autocars/UI/pages/search/searchPage.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../Widgets/drawer/drawer_widget.dart';

class HomePage extends StatefulWidget {
  String category;
  HomePage({super.key, required this.category});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List productsToDay = ["value1"];
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
        body: RefreshIndicator(
          onRefresh: () async {
            //refresh method
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            "assets/icons/setting.svg",
                            width: 30,
                            color: color5,
                          ),
                        ),
                      ),
                      const Text(
                        "العروض",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //---------categorys----------
                  SizedBox(
                    height: 40,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        CategoryCard(
                          isactive:
                              widget.category == "السيارات" ? true : false,
                          image: 'assets/icons_elemnets/car.png',
                          name: "السيارات",
                        ),
                        CategoryCard(
                          isactive:
                              widget.category == "قطع غيار" ? true : false,
                          image: 'assets/icons_elemnets/repair-tool.png',
                          name: "قطع غيار",
                        ),
                        CategoryCard(
                          isactive:
                              widget.category == "الإطارات" ? true : false,
                          image: 'assets/icons_elemnets/wheel.png',
                          name: "الإطارات",
                        ),
                        CategoryCard(
                          isactive:
                              widget.category == "دراجات نارية" ? true : false,
                          image: 'assets/icons_elemnets/motorcycle.png',
                          name: "دراجات نارية",
                        ),
                        CategoryCard(
                          isactive:
                              widget.category == "الشاحنات" ? true : false,
                          image: 'assets/icons_elemnets/truck.png',
                          name: "الشاحنات",
                        ),
                        CategoryCard(
                          isactive: widget.category == "القوارب" ? true : false,
                          image: 'assets/icons_elemnets/boat.png',
                          name: "القوارب",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.category,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "اليوم",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  /* بنستخدم فور لوب بسبب ان ال listveiw متمشيش في هده الحاله
                  */
                  for (int i = 0; i < productsToDay.length; i++)
                    ProductCard(
                      index: i,
                      isfavorit: false,
                    ) // this is for loop element
                  // u can use for element && forEach
                  // yeasterDay -----------
                  ,
                  const SizedBox(
                    height: 15,
                  ),

                  const Text(
                    "الأمس",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
// if U run this the hero is return error
// بسبب الزدواجيه في التاق
                  for (int i = 0; i < productsToDay.length; i++)
                    ProductCard(index: i, isfavorit: false),
                  const SizedBox(
                    height: 15,
                  ),

                  const Text(
                    "أقدم",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
// // if U run this the hero is return error
// // بسبب الزدواجيه في التاق
                  // for (int i = 0; i < productsToDay.length; i++)
                  for (int i = 0; i < 3; i++)
                    ProductCard(index: i, isfavorit: true),
                ],
              ),
            ),
          ),
        ));
  }
}
