// ignore_for_file: file_names

import 'package:autocars/UI/Widgets/cards/product.dart';
import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../Widgets/drawer/drawer_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const DrawerPage(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: color5,
        ),
        leading: const Text(""), // treck
        backgroundColor: color3,
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
              "البحث",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                    color: color5,
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
                    textDirection: TextDirection.rtl,
                    keyboardType: TextInputType.emailAddress,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: 'اكتب شي للبحث عنه',
                      hintStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w200),
                      hintTextDirection: TextDirection.rtl,
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
            const Text(textDirection: TextDirection.rtl, "0 من النتائج"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return ProductCard(index: index, isfavorit: false);
              },
            ))
          ],
        ),
      ),
    );
  }
}
