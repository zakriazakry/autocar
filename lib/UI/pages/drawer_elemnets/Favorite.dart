// ignore_for_file: file_names

import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:autocars/UI/pages/search/searchPage.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:flutter/material.dart';
import 'package:page_animation_transition/animations/right_to_left_faded_transition.dart';
import 'package:page_animation_transition/page_animation_transition.dart';

import '../../../consts/colors.dart';
import '../../Widgets/drawer/drawer_widget_AR.dart';
import '../../Widgets/drawer/drawer_widget_EN.dart';

class Favoritepage extends StatefulWidget {
  const Favoritepage({super.key});

  @override
  State<Favoritepage> createState() => _FavoritepageState();
}

class _FavoritepageState extends State<Favoritepage> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        crossAxisAlignment:
            IsAR() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            IsAR() ? ar['34'] : en['34'],
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.all(8.0), // enter the value ^with firebase
                child: ProductCard(
                    index: index, isfavorit: true, category: 'السيارات'),
              );
            },
          ))
        ],
      ),
    );
  }
}
