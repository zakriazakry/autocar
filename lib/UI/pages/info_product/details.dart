// ignore_for_file: must_be_immutable

import 'package:autocars/consts/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class DetailsProduct extends StatefulWidget {
  int index;
  DetailsProduct({super.key, required this.index});

  @override
  State<DetailsProduct> createState() => _DetailsStateProduct();
}

class _DetailsStateProduct extends State<DetailsProduct> {
  final List imgList = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Chevrolet_Aveo_LT_hatch_front.jpg/1200px-Chevrolet_Aveo_LT_hatch_front.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/04-06_Chevrolet_Aveo_sedan_3.jpg/1200px-04-06_Chevrolet_Aveo_sedan_3.jpg',
  ];
  CarouselController _carouselController = CarouselController();
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  carouselController: _carouselController,
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      myindex = index;
                      setState(() {});
                    },
                    // height: 400.0,
                    height: 255,
                    autoPlay: true,
                  ),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Hero(
                          tag: 'image${widget.index}',
                          child: Image.network(
                            i,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _carouselController.previousPage();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: color5,
                            size: 20,
                          )),
                      IconButton(
                          onPressed: () {
                            _carouselController.nextPage();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: color5,
                            size: 20,
                          )),
                    ],
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: color5,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: color1,
                        )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            PageViewDotIndicator(
              currentItem: myindex,
              count: imgList.length,
              unselectedColor: Colors.black26,
              selectedColor: color4,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "داو كالوس كبوط ",
                          style: TextStyle(
                              color: color1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              textDirection: TextDirection.rtl,
                              "3 د.ل",
                              style: TextStyle(
                                  color: color1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            Text(
                              "زكريا زكري",
                              style: TextStyle(
                                  color: color1,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("داو"),
                          Text("ازرق"),
                          Text("2003"),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider()
                // sec======================
                ,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "التاريخ النشر : 20-6-2023",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromARGB(255, 135, 135, 135)),
                        ),
                      ),
                      const Text(
                        "المعلومات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: color1),
                      ),
                      //info car
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: const Color.fromARGB(255, 229, 229, 229)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // body
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "0942667816",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "مستعملة",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "الزاوية",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "بنزين",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "اوتوماتيك",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "ازرق",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "200 Km",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                            //title
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "رقم الهاتف :",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "الحالة : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "المدينة : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "نوع الوقود :",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "الناقل : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "اللون : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  "عداد المركبه : ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "الإضافات",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: color1),
                      ),
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                          reverse: true,
                          itemCount: 1,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text(
                                "مكيفة",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18,
                                    color: color1),
                              ),
                            );
                          },
                        ),
                      ),
                      const Text(
                        "الوصف",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: color1),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 229, 229, 229)),
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "سياره الله يبارك كان بتاخدها بتنخشالك سلملي ع الورش الي بيلحموا فيك 😉",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: color1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
