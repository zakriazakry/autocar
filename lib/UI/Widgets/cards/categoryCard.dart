// ignore_for_file: file_names

import 'package:flutter/material.dart' show Border, BorderRadius, BoxDecoration, BuildContext, Container, EdgeInsets, Icon, Icons, MainAxisAlignment, Row, State, StatefulWidget, Text, Widget;

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key});

  @override
  State<CategoryCard> createState() => CategoryCardState();
}

class CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("الاسم"), Icon(Icons.car_crash)],
      ),
    );
  }
}
