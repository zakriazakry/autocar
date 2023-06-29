import 'package:autocars/consts/colors.dart';
import 'package:autocars/langs/Langauge.dart';
import 'package:autocars/main.dart';
import 'package:flutter/material.dart';

class AddAdsCar extends StatefulWidget {
  const AddAdsCar({super.key});

  @override
  State<AddAdsCar> createState() => _AddAdsCarState();
}

class _AddAdsCarState extends State<AddAdsCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment:
                IsAR() ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              // custom appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  Text(
                    IsAR() ? ar['55'] : en['55'],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, right: 10, left: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isDark ? color5 : color1,
                    width: 0.5,
                  ),
                ),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: IsAR() ? ar['56'] : en['56'],
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(IsAR() ? ar['57'] : en['57'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(IsAR() ? ar['58'] : en['58'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(IsAR() ? ar['59'] : en['59'],
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isDark
                                ? color1
                                : const Color.fromARGB(255, 235, 235, 235)),
                        child: Text(IsAR() ? ar['60'] : en['60'],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isDark
                                ? color1
                                : const Color.fromARGB(255, 235, 235, 235)),
                        child: Text(IsAR() ? ar['61'] : en['61'],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isDark
                                ? color1
                                : const Color.fromARGB(255, 235, 235, 235)),
                        child: Text(IsAR() ? ar['62'] : en['62'],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isDark
                                ? color1
                                : const Color.fromARGB(255, 235, 235, 235)),
                        child: Text(IsAR() ? ar['62'] : en['62'],
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(IsAR() ? ar['64'] : en['64'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(IsAR() ? ar['65'] : en['65'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(IsAR() ? ar['66'] : en['66'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 0.8,
                          color: isDark ? color5 : color1,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Flexible(
                          child: Text(IsAR() ? ar['67'] : en['67'],
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Icon(Icons.add)
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(IsAR() ? ar['68'] : en['68'],
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isDark
                          ? color1
                          : const Color.fromARGB(255, 231, 231, 231),
                    ),
                    child: Text(IsAR() ? ar['69'] : en['69'],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: isDark
                          ? color1
                          : const Color.fromARGB(255, 231, 231, 231),
                    ),
                    child: Text(IsAR() ? ar['70'] : en['70'],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(IsAR() ? ar['71'] : en['71'],
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              //===========add to image here action ========================
              Container(
                margin: const EdgeInsets.all(9),
                width: double.infinity,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isDark
                      ? color1
                      : const Color.fromARGB(255, 231, 231, 231),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      size: 60,
                      color: Colors.grey,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 30, right: 10, left: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isDark ? color5 : color1,
                    width: 0.5,
                  ),
                ),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: IsAR() ? ar['72'] : en['72'],
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, right: 10, left: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isDark ? color5 : color1,
                    width: 0.5,
                  ),
                ),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.phone,
                  maxLines: 1,
                  decoration: InputDecoration(
                    hintText: IsAR() ? ar['15'] : en['15'],
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, right: 10, left: 10, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isDark ? color5 : color1,
                    width: 0.5,
                  ),
                ),
                child: TextFormField(
                  textDirection: TextDirection.rtl,
                  keyboardType: TextInputType.text,
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: IsAR() ? ar['73'] : en['73'],
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 40),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(IsAR() ? ar['44'] : en['44'],
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 40),
                      decoration: BoxDecoration(
                          color: color4,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(IsAR() ? ar['45'] : en['45'],
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
