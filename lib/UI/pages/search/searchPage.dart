// ignore_for_file: file_names

import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:autocars/main.dart';
import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../../langs/Langauge.dart';
import '../../Widgets/drawer/drawer_widget_AR.dart';
import '../../Widgets/drawer/drawer_widget_EN.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: IsAR() ? const DrawerPage() : null,
      drawer: !IsAR() ? const DrawerPageEN() : null,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: color5,
        ),
        backgroundColor: color3,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment:
              IsAR() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              IsAR() ? ar['30'] : en['30'],
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: isDark ? color1 : color5,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  child: TextFormField(
                    textDirection:
                        IsAR() ? TextDirection.rtl : TextDirection.ltr,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: IsAR() ? ar['31'] : en['31'],
                      hintStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w200),
                      hintTextDirection:
                          IsAR() ? TextDirection.rtl : TextDirection.ltr,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: color1,
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: color5,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                textDirection: TextDirection.rtl,
                (IsAR() ? ar['32'] : en['32']) as String),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ProductCard(
                    index: index, isfavorit: false, category: 'السيارات');
              },
            ))
          ],
        ),
      ),
    );
  }
}
