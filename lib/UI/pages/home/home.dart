// ignore_for_file: deprecated_member_use, must_be_immutable

import 'package:autocars/UI/Widgets/cards/categoryCard.dart';
import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:autocars/UI/Widgets/drawer/drawer_widget_EN.dart';
import 'package:autocars/UI/pages/search/searchPage.dart';
import 'package:autocars/consts/colors.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../Widgets/drawer/drawer_widget_AR.dart';

class HomePage extends StatefulWidget {
  String category, name, langNumber;
  HomePage({
    super.key,
    required this.category,
    required this.name,
    required this.langNumber,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List productsToDay = ["value1"];
    return Scaffold(
        drawer: IsAR() ? null : const DrawerPageEN(),
        endDrawer: IsAR() ? const DrawerPage() : null,
        appBar: IsAR()
            ? AppBar(
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
              )
            : AppBar(
                iconTheme: const IconThemeData(
                  color: color5,
                ),
                backgroundColor: color3,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(PageAnimationTransition(
                            page: const SearchPage(),
                            pageAnimationType: RightToLeftFadedTransition()));
                      },
                      icon: const Icon(
                        Icons.search,
                        color: color5,
                      ))
                ],
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
                      Text(
                        IsAR() ? ar['20'] : en['20'],
                        style: const TextStyle(
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
                          numberlang: "21",
                          isactive: widget.langNumber == "21" ? true : false,
                          image: 'assets/icons_elemnets/car.png',
                          name: IsAR() ? ar["21"] : en["21"],
                        ),
                        CategoryCard(
                          numberlang: "22",
                          isactive: widget.langNumber == "22" ? true : false,
                          image: 'assets/icons_elemnets/repair-tool.png',
                          name: IsAR() ? ar["22"] : en["22"],
                        ),
                        CategoryCard(
                          numberlang: "23",
                          isactive: widget.langNumber == "23" ? true : false,
                          image: 'assets/icons_elemnets/wheel.png',
                          name: IsAR() ? ar["23"] : en["23"],
                        ),
                        CategoryCard(
                          numberlang: "24",
                          isactive: widget.langNumber == "24" ? true : false,
                          image: 'assets/icons_elemnets/motorcycle.png',
                          name: IsAR() ? ar["24"] : en["24"],
                        ),
                        CategoryCard(
                          numberlang: "25",
                          isactive: widget.langNumber == "25" ? true : false,
                          image: 'assets/icons_elemnets/truck.png',
                          name: IsAR() ? ar["25"] : en["25"],
                        ),
                        CategoryCard(
                          isactive: widget.langNumber == "26" ? true : false,
                          image: 'assets/icons_elemnets/boat.png',
                          name: IsAR() ? ar["26"] : en["26"],
                          numberlang: "26",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    IsAR() ? ar["27"] : en["27"],
                    style: const TextStyle(
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
                      category: widget.category,
                      index: i,
                      isfavorit: false,
                    ) // this is for loop element
                  // u can use for element && forEach
                  // yeasterDay -----------
                  ,
                  const SizedBox(
                    height: 15,
                  ),

                  Text(
                    IsAR() ? ar["28"] : en["28"],
                    style: const TextStyle(
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
                    ProductCard(
                        index: i, isfavorit: false, category: widget.category),
                  const SizedBox(
                    height: 15,
                  ),

                  Text(
                    IsAR() ? ar["29"] : en["29"],
                    style: const TextStyle(
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
                    ProductCard(
                        index: i, isfavorit: true, category: widget.category),
                ],
              ),
            ),
          ),
        ));
  }
}
