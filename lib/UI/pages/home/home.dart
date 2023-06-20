// ignore_for_file: deprecated_member_use

import 'package:autocars/UI/Widgets/cards/categoryCard.dart';
import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:autocars/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Widgets/drawer/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List productsToDay = ["value1"];
    return Scaffold(
        drawer: const DrawerPage(),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: color5,
          ),
          backgroundColor: color3,
          actions: [
            IconButton(
                onPressed: () {},
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
                      Container(
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
                    height: 35,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoryCard(),
                        CategoryCard(),
                        CategoryCard(),
                        CategoryCard(),
                        CategoryCard(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "السيارت",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                    ProductCard(index: i) // this is for loop element
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
                  // for (int i = 0; i < productsToDay.length; i++)
                  // ProductCard(index: i),
                ],
              ),
            ),
          ),
        ));
  }
}
