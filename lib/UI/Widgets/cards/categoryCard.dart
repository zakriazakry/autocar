// ignore_for_file: file_names, must_be_immutable

import 'package:autocars/UI/pages/home/home.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  bool isactive;

  String image, name, numberlang;
  CategoryCard({
    super.key,
    required this.isactive,
    required this.image,
    required this.numberlang,
    required this.name,
  });

  @override
  State<CategoryCard> createState() => CategoryCardState();
}

class CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => HomePage(
                      langNumber: widget.numberlang,
                      name: IsAR()
                          ? ar[widget.numberlang]
                          : en[widget.numberlang],
                      category: widget.name,
                    )),
            (Route<dynamic> route) => route is HomePage);
      },
      child: Container(
        // height: 35,
        // width: 100,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
                width: 1.4,
                color: isDark
                    ? widget.isactive
                        ? Colors.white
                        : const Color.fromARGB(255, 91, 91, 91)
                    : widget.isactive
                        ? Colors.black
                        : Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name.toString(),
              style: TextStyle(
                  color: isDark
                      ? widget.isactive
                          ? Colors.white
                          : const Color.fromARGB(255, 91, 91, 91)
                      : widget.isactive
                          ? Colors.black
                          : Colors.grey),
            ),
            Image.asset(
              widget.image.toString(),
              width: 25,
              height: 25,
              fit: BoxFit.contain,
              color: isDark
                  ? widget.isactive
                      ? Colors.white
                      : const Color.fromARGB(255, 91, 91, 91)
                  : widget.isactive
                      ? Colors.black
                      : Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
