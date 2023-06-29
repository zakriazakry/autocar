// ignore_for_file: must_be_immutable
import 'package:autocars/consts/colors.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class DetailsProducparts extends StatefulWidget {
  int index;
  DetailsProducparts({super.key, required this.index});

  @override
  State<DetailsProducparts> createState() => _DetailsStateProduct();
}

class _DetailsStateProduct extends State<DetailsProducparts> {
  final List imgList = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Chevrolet_Aveo_LT_hatch_front.jpg/1200px-Chevrolet_Aveo_LT_hatch_front.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/04-06_Chevrolet_Aveo_sedan_3.jpg/1200px-04-06_Chevrolet_Aveo_sedan_3.jpg',
  ];
  final CarouselController _carouselController = CarouselController();
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
                        return Image.network(
                          i,
                          height: 100,
                          fit: BoxFit.cover,
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
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            " 20-6-2023",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 135, 135, 135)),
                          ),
                          const Text(
                            ":",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 135, 135, 135)),
                          ),
                          Text(
                            textDirection:
                                IsAR() ? TextDirection.rtl : TextDirection.ltr,
                            IsAR() ? ar['98'].toString() : en['98'].toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromARGB(255, 135, 135, 135)),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          textDirection:
                              IsAR() ? TextDirection.rtl : TextDirection.ltr,
                          "داو كالوس كبوط ",
                          style: TextStyle(
                              color: isDark ? color5 : color1,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border(
                              bottom: BorderSide(
                                width: 7,
                                color: isDark
                                    ? color1
                                    : const Color.fromARGB(255, 236, 236, 236),
                              ),
                              top: BorderSide(
                                width: 2,
                                color: isDark
                                    ? color1
                                    : const Color.fromARGB(255, 236, 236, 236),
                              ),
                              right: BorderSide(
                                width: 2,
                                color: isDark
                                    ? color1
                                    : const Color.fromARGB(255, 236, 236, 236),
                              ),
                              left: BorderSide(
                                width: 2,
                                color: isDark
                                    ? color1
                                    : const Color.fromARGB(255, 236, 236, 236),
                              ),
                            )),
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      textDirection: TextDirection.rtl,
                                      "3 د.ل",
                                      style: TextStyle(
                                          color: isDark ? color3 : color1,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Text(
                                      "زكريا زكري",
                                      style: TextStyle(
                                          color: isDark ? color5 : color1,
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("داو"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // sec======================

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        IsAR() ? ar['99'].toString() : en['99'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: isDark ? Colors.grey : color1,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //info car
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: isDark
                              ? color1
                              : const Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // body
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
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
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            //title
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  IsAR() ? "${ar['100']}:  " : "${en['100']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textDirection: TextDirection.rtl,
                                  IsAR() ? "${ar['66']}:  " : "${en['66']}  :",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: color2,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              "0942667816",
                              style: TextStyle(fontSize: 16, color: color5),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                              textDirection: !IsAR()
                                  ? TextDirection.rtl
                                  : TextDirection.ltr,
                              IsAR() ? "${ar['15']}:  " : "${en['15']}  :",
                              style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        IsAR() ? ar['73'].toString() : en['73'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: isDark ? Colors.grey : color1,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isDark
                              ? color1
                              : const Color.fromARGB(255, 229, 229, 229),
                        ),
                        child: const Text(
                          textDirection: TextDirection.rtl,
                          "سياره الله يبارك كان بتاخدها بتنحشالك سلملي ع الورش الي بيلحموا فيك 😉",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 50,
                      ),
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
