// ignore_for_file: file_names, must_be_immutable

import 'package:autocars/UI/pages/home/home.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  bool isactive;
  String image, name;
  CategoryCard({
    super.key,
    required this.isactive,
    required this.image,
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
                width: 1, color: widget.isactive ? Colors.black : Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name.toString(),
              style: TextStyle(
                  color: widget.isactive ? Colors.black : Colors.grey),
            ),
            Image.asset(
              widget.image.toString(),
              width: 25,
              height: 25,
              fit: BoxFit.contain,
              color: widget.isactive ? Colors.black : Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
